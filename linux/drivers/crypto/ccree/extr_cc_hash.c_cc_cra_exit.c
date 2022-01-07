
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct cc_hash_ctx {int drvdata; } ;


 int cc_free_ctx (struct cc_hash_ctx*) ;
 struct cc_hash_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int dev_dbg (struct device*,char*) ;
 struct device* drvdata_to_dev (int ) ;

__attribute__((used)) static void cc_cra_exit(struct crypto_tfm *tfm)
{
 struct cc_hash_ctx *ctx = crypto_tfm_ctx(tfm);
 struct device *dev = drvdata_to_dev(ctx->drvdata);

 dev_dbg(dev, "cc_cra_exit");
 cc_free_ctx(ctx);
}
