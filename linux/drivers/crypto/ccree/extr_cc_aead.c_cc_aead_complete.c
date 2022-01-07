
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cc_aead_ctx {scalar_t__ authsize; int cipher_mode; } ;
struct aead_request {scalar_t__ cryptlen; int dst; int iv; } ;
struct TYPE_2__ {scalar_t__ op_type; } ;
struct aead_req_ctx {int dst_sgl; int mac_buf; scalar_t__ dst_offset; scalar_t__ is_icv_fragmented; int icv_virt_addr; TYPE_1__ gen_ctx; int backup_iv; } ;


 int CC_SG_FROM_BUF ;
 scalar_t__ DRV_CRYPTO_DIRECTION_DECRYPT ;
 int EBADMSG ;
 int EINPROGRESS ;
 int aead_request_complete (struct aead_request*,int) ;
 struct aead_req_ctx* aead_request_ctx (struct aead_request*) ;
 int cc_copy_sg_portion (struct device*,int ,int ,scalar_t__,scalar_t__,int ) ;
 int cc_unmap_aead_request (struct device*,struct aead_request*) ;
 struct cc_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (void*) ;
 int dev_dbg (struct device*,char*,scalar_t__,int ) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int sg_nents (int ) ;
 int sg_zero_buffer (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void cc_aead_complete(struct device *dev, void *cc_req, int err)
{
 struct aead_request *areq = (struct aead_request *)cc_req;
 struct aead_req_ctx *areq_ctx = aead_request_ctx(areq);
 struct crypto_aead *tfm = crypto_aead_reqtfm(cc_req);
 struct cc_aead_ctx *ctx = crypto_aead_ctx(tfm);


 if (err == -EINPROGRESS)
  goto done;

 cc_unmap_aead_request(dev, areq);


 areq->iv = areq_ctx->backup_iv;

 if (err)
  goto done;

 if (areq_ctx->gen_ctx.op_type == DRV_CRYPTO_DIRECTION_DECRYPT) {
  if (memcmp(areq_ctx->mac_buf, areq_ctx->icv_virt_addr,
      ctx->authsize) != 0) {
   dev_dbg(dev, "Payload authentication failure, (auth-size=%d, cipher=%d)\n",
    ctx->authsize, ctx->cipher_mode);



   sg_zero_buffer(areq->dst, sg_nents(areq->dst),
           areq->cryptlen, 0);
   err = -EBADMSG;
  }

 } else if (areq_ctx->is_icv_fragmented) {
  u32 skip = areq->cryptlen + areq_ctx->dst_offset;

  cc_copy_sg_portion(dev, areq_ctx->mac_buf, areq_ctx->dst_sgl,
       skip, (skip + ctx->authsize),
       CC_SG_FROM_BUF);
 }
done:
 aead_request_complete(areq, err);
}
