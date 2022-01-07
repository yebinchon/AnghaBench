
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_aes_ctx {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct chcr_blkcipher_req_ctx {int last_req_len; int iv; } ;
struct ablkcipher_request {int dummy; } ;
struct ablk_ctx {int enckey_len; int * key; } ;
typedef int le128 ;
typedef int aes ;


 struct ablk_ctx* ABLK_CTX (int ) ;
 int AES_BLOCK_SIZE ;
 struct chcr_blkcipher_req_ctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int aes_decrypt (struct crypto_aes_ctx*,int *,int *) ;
 int aes_encrypt (struct crypto_aes_ctx*,int *,int *) ;
 int aes_expandkey (struct crypto_aes_ctx*,int *,unsigned int) ;
 int c_ctx (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int gf128mul_x8_ble (int *,int *) ;
 int gf128mul_x_ble (int *,int *) ;
 int memcpy (int *,int ,int) ;
 int memzero_explicit (struct crypto_aes_ctx*,int) ;

__attribute__((used)) static int chcr_update_tweak(struct ablkcipher_request *req, u8 *iv,
        u32 isfinal)
{
 struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
 struct ablk_ctx *ablkctx = ABLK_CTX(c_ctx(tfm));
 struct chcr_blkcipher_req_ctx *reqctx = ablkcipher_request_ctx(req);
 struct crypto_aes_ctx aes;
 int ret, i;
 u8 *key;
 unsigned int keylen;
 int round = reqctx->last_req_len / AES_BLOCK_SIZE;
 int round8 = round / 8;

 memcpy(iv, reqctx->iv, AES_BLOCK_SIZE);

 keylen = ablkctx->enckey_len / 2;
 key = ablkctx->key + keylen;
 ret = aes_expandkey(&aes, key, keylen);
 if (ret)
  return ret;
 aes_encrypt(&aes, iv, iv);
 for (i = 0; i < round8; i++)
  gf128mul_x8_ble((le128 *)iv, (le128 *)iv);

 for (i = 0; i < (round % 8); i++)
  gf128mul_x_ble((le128 *)iv, (le128 *)iv);

 if (!isfinal)
  aes_decrypt(&aes, iv, iv);

 memzero_explicit(&aes, sizeof(aes));
 return 0;
}
