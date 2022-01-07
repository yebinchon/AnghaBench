
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_hash_reqctx {int error; int finup; int nregs; int engine; scalar_t__ skip; scalar_t__ total; scalar_t__ digcnt; scalar_t__ bufcnt; TYPE_1__* dd; } ;
struct s5p_hash_ctx {TYPE_1__* dd; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int HASH_MD5_MAX_REG ;
 int HASH_SHA1_MAX_REG ;
 int HASH_SHA256_MAX_REG ;



 int SSS_HASH_ENGINE_MD5 ;
 int SSS_HASH_ENGINE_SHA1 ;
 int SSS_HASH_ENGINE_SHA256 ;
 struct s5p_hash_reqctx* ahash_request_ctx (struct ahash_request*) ;
 struct s5p_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int dev_dbg (int ,char*,int) ;

__attribute__((used)) static int s5p_hash_init(struct ahash_request *req)
{
 struct s5p_hash_reqctx *ctx = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct s5p_hash_ctx *tctx = crypto_ahash_ctx(tfm);

 ctx->dd = tctx->dd;
 ctx->error = 0;
 ctx->finup = 0;
 ctx->bufcnt = 0;
 ctx->digcnt = 0;
 ctx->total = 0;
 ctx->skip = 0;

 dev_dbg(tctx->dd->dev, "init: digest size: %d\n",
  crypto_ahash_digestsize(tfm));

 switch (crypto_ahash_digestsize(tfm)) {
 case 130:
  ctx->engine = SSS_HASH_ENGINE_MD5;
  ctx->nregs = HASH_MD5_MAX_REG;
  break;
 case 129:
  ctx->engine = SSS_HASH_ENGINE_SHA1;
  ctx->nregs = HASH_SHA1_MAX_REG;
  break;
 case 128:
  ctx->engine = SSS_HASH_ENGINE_SHA256;
  ctx->nregs = HASH_SHA256_MAX_REG;
  break;
 default:
  ctx->error = 1;
  return -EINVAL;
 }

 return 0;
}
