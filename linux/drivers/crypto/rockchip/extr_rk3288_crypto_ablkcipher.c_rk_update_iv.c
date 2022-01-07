
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rk_crypto_info {scalar_t__ reg; TYPE_1__* sg_dst; int async_req; } ;
struct rk_cipher_ctx {int mode; int * iv; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;
struct TYPE_2__ {int offset; int length; } ;


 int AES_BLOCK_SIZE ;
 int DES_BLOCK_SIZE ;
 scalar_t__ RK_CRYPTO_AES_IV_0 ;
 int RK_CRYPTO_DEC ;
 scalar_t__ RK_CRYPTO_TDES_IV_0 ;
 struct ablkcipher_request* ablkcipher_request_cast (int ) ;
 struct rk_cipher_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_ivsize (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int memcpy_toio (scalar_t__,int *,int ) ;
 int page_address (int ) ;
 int sg_page (TYPE_1__*) ;

__attribute__((used)) static void rk_update_iv(struct rk_crypto_info *dev)
{
 struct ablkcipher_request *req =
  ablkcipher_request_cast(dev->async_req);
 struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
 struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
 u32 ivsize = crypto_ablkcipher_ivsize(tfm);
 u8 *new_iv = ((void*)0);

 if (ctx->mode & RK_CRYPTO_DEC) {
  new_iv = ctx->iv;
 } else {
  new_iv = page_address(sg_page(dev->sg_dst)) +
    dev->sg_dst->offset + dev->sg_dst->length - ivsize;
 }

 if (ivsize == DES_BLOCK_SIZE)
  memcpy_toio(dev->reg + RK_CRYPTO_TDES_IV_0, new_iv, ivsize);
 else if (ivsize == AES_BLOCK_SIZE)
  memcpy_toio(dev->reg + RK_CRYPTO_AES_IV_0, new_iv, ivsize);
}
