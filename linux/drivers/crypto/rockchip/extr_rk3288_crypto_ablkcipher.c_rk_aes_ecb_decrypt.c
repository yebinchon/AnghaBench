
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_crypto_info {int dummy; } ;
struct rk_cipher_ctx {int mode; struct rk_crypto_info* dev; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;


 int RK_CRYPTO_AES_ECB_MODE ;
 int RK_CRYPTO_DEC ;
 struct rk_cipher_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int rk_handle_req (struct rk_crypto_info*,struct ablkcipher_request*) ;

__attribute__((used)) static int rk_aes_ecb_decrypt(struct ablkcipher_request *req)
{
 struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
 struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
 struct rk_crypto_info *dev = ctx->dev;

 ctx->mode = RK_CRYPTO_AES_ECB_MODE | RK_CRYPTO_DEC;
 return rk_handle_req(dev, req);
}
