
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state {TYPE_1__* aead; } ;
struct ipsec_sa_entry {int enckey_len; int kctx_len; int key; int key_ctx_hdr; int salt; } ;
struct crypto_aes_ctx {int dummy; } ;
struct _key_ctx {int dummy; } ;
typedef int aes ;
struct TYPE_2__ {int alg_key_len; unsigned char* alg_key; } ;


 int AEAD_H_SIZE ;
 int AES_KEYSIZE_128 ;
 int AES_KEYSIZE_192 ;
 int AES_KEYSIZE_256 ;
 int CHCR_KEYCTX_CIPHER_KEY_SIZE_128 ;
 int CHCR_KEYCTX_CIPHER_KEY_SIZE_192 ;
 int CHCR_KEYCTX_CIPHER_KEY_SIZE_256 ;
 int CHCR_KEYCTX_MAC_KEY_SIZE_128 ;
 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int FILL_KEY_CTX_HDR (int,int ,int ,int ,int) ;
 int aes_encrypt (struct crypto_aes_ctx*,unsigned char*,unsigned char*) ;
 int aes_expandkey (struct crypto_aes_ctx*,unsigned char*,int) ;
 int memcpy (int ,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int memzero_explicit (struct crypto_aes_ctx*,int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static inline int chcr_ipsec_setkey(struct xfrm_state *x,
        struct ipsec_sa_entry *sa_entry)
{
 int keylen = (x->aead->alg_key_len + 7) / 8;
 unsigned char *key = x->aead->alg_key;
 int ck_size, key_ctx_size = 0;
 unsigned char ghash_h[AEAD_H_SIZE];
 struct crypto_aes_ctx aes;
 int ret = 0;

 if (keylen > 3) {
  keylen -= 4;
  memcpy(sa_entry->salt, key + keylen, 4);
 }

 if (keylen == AES_KEYSIZE_128) {
  ck_size = CHCR_KEYCTX_CIPHER_KEY_SIZE_128;
 } else if (keylen == AES_KEYSIZE_192) {
  ck_size = CHCR_KEYCTX_CIPHER_KEY_SIZE_192;
 } else if (keylen == AES_KEYSIZE_256) {
  ck_size = CHCR_KEYCTX_CIPHER_KEY_SIZE_256;
 } else {
  pr_err("GCM: Invalid key length %d\n", keylen);
  ret = -EINVAL;
  goto out;
 }

 memcpy(sa_entry->key, key, keylen);
 sa_entry->enckey_len = keylen;
 key_ctx_size = sizeof(struct _key_ctx) +
         ((DIV_ROUND_UP(keylen, 16)) << 4) +
         AEAD_H_SIZE;

 sa_entry->key_ctx_hdr = FILL_KEY_CTX_HDR(ck_size,
       CHCR_KEYCTX_MAC_KEY_SIZE_128,
       0, 0,
       key_ctx_size >> 4);




 ret = aes_expandkey(&aes, key, keylen);
 if (ret) {
  sa_entry->enckey_len = 0;
  goto out;
 }
 memset(ghash_h, 0, AEAD_H_SIZE);
 aes_encrypt(&aes, ghash_h, ghash_h);
 memzero_explicit(&aes, sizeof(aes));

 memcpy(sa_entry->key + (DIV_ROUND_UP(sa_entry->enckey_len, 16) *
        16), ghash_h, AEAD_H_SIZE);
 sa_entry->kctx_len = ((DIV_ROUND_UP(sa_entry->enckey_len, 16)) << 4) +
         AEAD_H_SIZE;
out:
 return ret;
}
