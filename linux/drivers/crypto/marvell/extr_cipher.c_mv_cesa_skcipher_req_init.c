
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skcipher_request {int cryptlen; int dst; int src; } ;
struct mv_cesa_skcipher_req {scalar_t__ src_nents; scalar_t__ dst_nents; } ;
struct mv_cesa_op_ctx {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_4__ {TYPE_1__* caps; int dev; } ;
struct TYPE_3__ {scalar_t__ has_tdma; } ;


 int CESA_SA_DESC_CFG_OP_CRYPT_ONLY ;
 int CESA_SA_DESC_CFG_OP_MSK ;
 int EINVAL ;
 int IS_ALIGNED (int ,unsigned int) ;
 TYPE_2__* cesa_dev ;
 unsigned int crypto_skcipher_blocksize (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int dev_err (int ,char*) ;
 int mv_cesa_skcipher_dma_req_init (struct skcipher_request*,struct mv_cesa_op_ctx*) ;
 int mv_cesa_skcipher_std_req_init (struct skcipher_request*,struct mv_cesa_op_ctx*) ;
 int mv_cesa_update_op_cfg (struct mv_cesa_op_ctx*,int ,int ) ;
 void* sg_nents_for_len (int ,int ) ;
 struct mv_cesa_skcipher_req* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static int mv_cesa_skcipher_req_init(struct skcipher_request *req,
         struct mv_cesa_op_ctx *tmpl)
{
 struct mv_cesa_skcipher_req *creq = skcipher_request_ctx(req);
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 unsigned int blksize = crypto_skcipher_blocksize(tfm);
 int ret;

 if (!IS_ALIGNED(req->cryptlen, blksize))
  return -EINVAL;

 creq->src_nents = sg_nents_for_len(req->src, req->cryptlen);
 if (creq->src_nents < 0) {
  dev_err(cesa_dev->dev, "Invalid number of src SG");
  return creq->src_nents;
 }
 creq->dst_nents = sg_nents_for_len(req->dst, req->cryptlen);
 if (creq->dst_nents < 0) {
  dev_err(cesa_dev->dev, "Invalid number of dst SG");
  return creq->dst_nents;
 }

 mv_cesa_update_op_cfg(tmpl, CESA_SA_DESC_CFG_OP_CRYPT_ONLY,
         CESA_SA_DESC_CFG_OP_MSK);

 if (cesa_dev->caps->has_tdma)
  ret = mv_cesa_skcipher_dma_req_init(req, tmpl);
 else
  ret = mv_cesa_skcipher_std_req_init(req, tmpl);

 return ret;
}
