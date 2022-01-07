
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct cc_hash_ctx {scalar_t__ hash_mode; int drvdata; } ;


 int CC_SM3_HASH_LEN_SIZE ;
 scalar_t__ DRV_HASH_SM3 ;
 int cc_get_default_hash_len (int ) ;
 struct cc_hash_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int cc_get_hash_len(struct crypto_tfm *tfm)
{
 struct cc_hash_ctx *ctx = crypto_tfm_ctx(tfm);

 if (ctx->hash_mode == DRV_HASH_SM3)
  return CC_SM3_HASH_LEN_SIZE;
 else
  return cc_get_default_hash_len(ctx->drvdata);
}
