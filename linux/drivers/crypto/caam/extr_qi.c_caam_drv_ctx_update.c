
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qman_fq {int dummy; } ;
struct device {int dummy; } ;
struct caam_drv_ctx {struct qman_fq* req_fq; int context_a; int sh_desc; void** prehdr; int rsp_fq; struct device* qidev; } ;


 int DMA_BIDIRECTIONAL ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct qman_fq*) ;
 int MAX_SDLEN ;
 int PREHDR_ABS ;
 int PREHDR_RSLS_SHIFT ;
 int PTR_ERR (struct qman_fq*) ;
 void* cpu_to_caam32 (int) ;
 struct qman_fq* create_caam_req_fq (struct device*,int ,int ,int ) ;
 int desc_bytes (int*) ;
 int desc_len (int*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_warn (struct device*,char*) ;
 int dma_sync_single_for_device (struct device*,int ,int,int ) ;
 int empty_caam_fq (struct qman_fq*) ;
 scalar_t__ kill_fq (struct device*,struct qman_fq*) ;
 int memcpy (int ,int*,int ) ;
 int qman_schedule_fq (struct qman_fq*) ;

int caam_drv_ctx_update(struct caam_drv_ctx *drv_ctx, u32 *sh_desc)
{
 int ret;
 u32 num_words;
 struct qman_fq *new_fq, *old_fq;
 struct device *qidev = drv_ctx->qidev;

 num_words = desc_len(sh_desc);
 if (num_words > MAX_SDLEN) {
  dev_err(qidev, "Invalid descriptor len: %d words\n", num_words);
  return -EINVAL;
 }


 old_fq = drv_ctx->req_fq;


 new_fq = create_caam_req_fq(drv_ctx->qidev, drv_ctx->rsp_fq,
        drv_ctx->context_a, 0);
 if (IS_ERR(new_fq)) {
  dev_err(qidev, "FQ allocation for shdesc update failed\n");
  return PTR_ERR(new_fq);
 }


 drv_ctx->req_fq = new_fq;


 ret = empty_caam_fq(old_fq);
 if (ret) {
  dev_err(qidev, "Old CAAM FQ empty failed: %d\n", ret);


  drv_ctx->req_fq = old_fq;

  if (kill_fq(qidev, new_fq))
   dev_warn(qidev, "New CAAM FQ kill failed\n");

  return ret;
 }





 drv_ctx->prehdr[0] = cpu_to_caam32((1 << PREHDR_RSLS_SHIFT) |
        num_words);
 drv_ctx->prehdr[1] = cpu_to_caam32(PREHDR_ABS);
 memcpy(drv_ctx->sh_desc, sh_desc, desc_bytes(sh_desc));
 dma_sync_single_for_device(qidev, drv_ctx->context_a,
       sizeof(drv_ctx->sh_desc) +
       sizeof(drv_ctx->prehdr),
       DMA_BIDIRECTIONAL);


 ret = qman_schedule_fq(new_fq);
 if (ret) {
  dev_err(qidev, "Fail to sched new CAAM FQ, ecode = %d\n", ret);






  drv_ctx->req_fq = old_fq;

  if (kill_fq(qidev, new_fq))
   dev_warn(qidev, "New CAAM FQ kill failed\n");
 } else if (kill_fq(qidev, old_fq)) {
  dev_warn(qidev, "Old CAAM FQ kill failed\n");
 }

 return 0;
}
