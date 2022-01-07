
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {scalar_t__ npe_ctx; } ;
struct ixp_ctx {int completion; int configuring; TYPE_2__ decrypt; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int tfm; struct ablkcipher_request* ablk_req; struct aead_request* aead_req; } ;
struct crypt_ctl {int ctl_flags; TYPE_1__ data; int src_buf; TYPE_6__* regist_buf; TYPE_6__* regist_ptr; int dst_buf; } ;
struct TYPE_10__ {int (* complete ) (TYPE_4__*,int) ;} ;
struct aead_request {TYPE_4__ base; } ;
struct aead_ctx {int hmac_virt; int dst; int src; } ;
struct TYPE_9__ {int (* complete ) (TYPE_3__*,int) ;} ;
struct ablkcipher_request {TYPE_3__ base; } ;
struct ablk_ctx {int src; int dst; } ;
typedef int dma_addr_t ;
struct TYPE_12__ {int phys_addr; } ;
struct TYPE_11__ {struct device dev; } ;


 int BUG () ;
 int CIPH_ENCR ;


 int CTL_FLAG_MASK ;


 int CTL_FLAG_UNUSED ;
 int EBADMSG ;
 struct ablk_ctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 struct aead_ctx* aead_request_ctx (struct aead_request*) ;
 int atomic_dec_and_test (int *) ;
 int buffer_pool ;
 int complete (int *) ;
 int cpu_to_be32 (int ) ;
 struct crypt_ctl* crypt_phys2virt (int) ;
 struct ixp_ctx* crypto_tfm_ctx (int ) ;
 int ctx_pool ;
 int dma_pool_free (int ,TYPE_6__*,int ) ;
 int finish_scattered_hmac (struct crypt_ctl*) ;
 int free_buf_chain (struct device*,int ,int ) ;
 TYPE_5__* pdev ;
 int stub1 (TYPE_4__*,int) ;
 int stub2 (TYPE_3__*,int) ;

__attribute__((used)) static void one_packet(dma_addr_t phys)
{
 struct device *dev = &pdev->dev;
 struct crypt_ctl *crypt;
 struct ixp_ctx *ctx;
 int failed;

 failed = phys & 0x1 ? -EBADMSG : 0;
 phys &= ~0x3;
 crypt = crypt_phys2virt(phys);

 switch (crypt->ctl_flags & CTL_FLAG_MASK) {
 case 128: {
  struct aead_request *req = crypt->data.aead_req;
  struct aead_ctx *req_ctx = aead_request_ctx(req);

  free_buf_chain(dev, req_ctx->src, crypt->src_buf);
  free_buf_chain(dev, req_ctx->dst, crypt->dst_buf);
  if (req_ctx->hmac_virt) {
   finish_scattered_hmac(crypt);
  }
  req->base.complete(&req->base, failed);
  break;
 }
 case 129: {
  struct ablkcipher_request *req = crypt->data.ablk_req;
  struct ablk_ctx *req_ctx = ablkcipher_request_ctx(req);

  if (req_ctx->dst) {
   free_buf_chain(dev, req_ctx->dst, crypt->dst_buf);
  }
  free_buf_chain(dev, req_ctx->src, crypt->src_buf);
  req->base.complete(&req->base, failed);
  break;
 }
 case 131:
  ctx = crypto_tfm_ctx(crypt->data.tfm);
  dma_pool_free(ctx_pool, crypt->regist_ptr,
    crypt->regist_buf->phys_addr);
  dma_pool_free(buffer_pool, crypt->regist_buf, crypt->src_buf);
  if (atomic_dec_and_test(&ctx->configuring))
   complete(&ctx->completion);
  break;
 case 130:
  ctx = crypto_tfm_ctx(crypt->data.tfm);
  *(u32*)ctx->decrypt.npe_ctx &= cpu_to_be32(~CIPH_ENCR);
  if (atomic_dec_and_test(&ctx->configuring))
   complete(&ctx->completion);
  break;
 default:
  BUG();
 }
 crypt->ctl_flags = CTL_FLAG_UNUSED;
}
