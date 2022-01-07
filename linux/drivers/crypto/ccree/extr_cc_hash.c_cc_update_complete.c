
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct cc_hash_ctx {int dummy; } ;
struct ahash_request {int src; } ;
struct ahash_req_ctx {int dummy; } ;


 int EINPROGRESS ;
 int ahash_request_complete (struct ahash_request*,int) ;
 struct ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int cc_unmap_hash_request (struct device*,struct ahash_req_ctx*,int ,int) ;
 int cc_unmap_req (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ;
 struct cc_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int dev_dbg (struct device*,char*,struct ahash_request*) ;

__attribute__((used)) static void cc_update_complete(struct device *dev, void *cc_req, int err)
{
 struct ahash_request *req = (struct ahash_request *)cc_req;
 struct ahash_req_ctx *state = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct cc_hash_ctx *ctx = crypto_ahash_ctx(tfm);

 dev_dbg(dev, "req=%pK\n", req);

 if (err != -EINPROGRESS) {

  cc_unmap_hash_request(dev, state, req->src, 0);
  cc_unmap_req(dev, state, ctx);
 }

 ahash_request_complete(req, err);
}
