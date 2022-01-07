
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tls12_crypto_info_aes_gcm_128 {unsigned char* key; unsigned char* salt; } ;
struct crypto_aes_ctx {int dummy; } ;
struct TYPE_2__ {int keylen; int crypto_info; } ;
struct chtls_sock {TYPE_1__ tlshws; } ;
struct _key_ctx {unsigned char* salt; unsigned char* key; int ctx_hdr; } ;
typedef int aes ;


 int AEAD_H_SIZE ;
 int AES_KEYSIZE_128 ;
 int CHCR_KEYCTX_CIPHER_KEY_SIZE_128 ;
 int CHCR_KEYCTX_MAC_KEY_SIZE_128 ;
 int EINVAL ;
 int FILL_KEY_CRX_HDR (int,int ,int ,int ,int) ;
 int FILL_KEY_CTX_HDR (int,int ,int ,int ,int) ;
 int TLS_CIPHER_AES_GCM_128_SALT_SIZE ;
 int TLS_RX ;
 int aes_encrypt (struct crypto_aes_ctx*,unsigned char*,unsigned char*) ;
 int aes_expandkey (struct crypto_aes_ctx*,unsigned char*,int) ;
 int chtls_rxkey_ivauth (struct _key_ctx*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int memzero_explicit (struct crypto_aes_ctx*,int) ;
 int pr_err (char*,int) ;
 int roundup (int,int) ;

__attribute__((used)) static int chtls_key_info(struct chtls_sock *csk,
     struct _key_ctx *kctx,
     u32 keylen, u32 optname)
{
 unsigned char key[AES_KEYSIZE_128];
 struct tls12_crypto_info_aes_gcm_128 *gcm_ctx;
 unsigned char ghash_h[AEAD_H_SIZE];
 int ck_size, key_ctx_size;
 struct crypto_aes_ctx aes;
 int ret;

 gcm_ctx = (struct tls12_crypto_info_aes_gcm_128 *)
    &csk->tlshws.crypto_info;

 key_ctx_size = sizeof(struct _key_ctx) +
         roundup(keylen, 16) + AEAD_H_SIZE;

 if (keylen == AES_KEYSIZE_128) {
  ck_size = CHCR_KEYCTX_CIPHER_KEY_SIZE_128;
 } else {
  pr_err("GCM: Invalid key length %d\n", keylen);
  return -EINVAL;
 }
 memcpy(key, gcm_ctx->key, keylen);




 ret = aes_expandkey(&aes, key, keylen);
 if (ret)
  return ret;

 memset(ghash_h, 0, AEAD_H_SIZE);
 aes_encrypt(&aes, ghash_h, ghash_h);
 memzero_explicit(&aes, sizeof(aes));
 csk->tlshws.keylen = key_ctx_size;


 if (optname == TLS_RX) {
  int key_ctx;

  key_ctx = ((key_ctx_size >> 4) << 3);
  kctx->ctx_hdr = FILL_KEY_CRX_HDR(ck_size,
       CHCR_KEYCTX_MAC_KEY_SIZE_128,
       0, 0, key_ctx);
  chtls_rxkey_ivauth(kctx);
 } else {
  kctx->ctx_hdr = FILL_KEY_CTX_HDR(ck_size,
       CHCR_KEYCTX_MAC_KEY_SIZE_128,
       0, 0, key_ctx_size >> 4);
 }

 memcpy(kctx->salt, gcm_ctx->salt, TLS_CIPHER_AES_GCM_128_SALT_SIZE);
 memcpy(kctx->key, gcm_ctx->key, keylen);
 memcpy(kctx->key + keylen, ghash_h, AEAD_H_SIZE);

 memset(gcm_ctx->key, 0, keylen);

 return 0;
}
