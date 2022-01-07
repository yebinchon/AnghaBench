
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct cc_hash_ctx {int drvdata; } ;
struct ahash_request {int nbytes; } ;
struct ahash_req_ctx {int dummy; } ;


 struct ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int cc_init_req (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ;
 struct cc_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int dev_dbg (struct device*,char*,int ) ;
 struct device* drvdata_to_dev (int ) ;

__attribute__((used)) static int cc_hash_init(struct ahash_request *req)
{
 struct ahash_req_ctx *state = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct cc_hash_ctx *ctx = crypto_ahash_ctx(tfm);
 struct device *dev = drvdata_to_dev(ctx->drvdata);

 dev_dbg(dev, "===== init (%d) ====\n", req->nbytes);

 cc_init_req(dev, state, ctx);

 return 0;
}
