
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_cryp {TYPE_1__* ctx; int req; int engine; int areq; int dev; int hw_blocksize; int total_out_save; int total_in_save; int out_sg_save; int out_sgl; int in_sgl; scalar_t__ sgs_copied; } ;
struct TYPE_2__ {int keylen; int key; } ;


 int ALIGN (int ,int ) ;
 int crypto_finalize_ablkcipher_request (int ,int ,int) ;
 int crypto_finalize_aead_request (int ,int ,int) ;
 int free_pages (unsigned long,int) ;
 int get_order (int) ;
 scalar_t__ is_ccm (struct stm32_cryp*) ;
 scalar_t__ is_gcm (struct stm32_cryp*) ;
 int memset (int ,int ,int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int sg_copy_buf (void*,int ,int ,int ,int) ;
 void* sg_virt (int *) ;
 int stm32_cryp_get_iv (struct stm32_cryp*) ;
 int stm32_cryp_read_auth_tag (struct stm32_cryp*) ;

__attribute__((used)) static void stm32_cryp_finish_req(struct stm32_cryp *cryp, int err)
{
 if (!err && (is_gcm(cryp) || is_ccm(cryp)))

  err = stm32_cryp_read_auth_tag(cryp);

 if (!err && (!(is_gcm(cryp) || is_ccm(cryp))))
  stm32_cryp_get_iv(cryp);

 if (cryp->sgs_copied) {
  void *buf_in, *buf_out;
  int pages, len;

  buf_in = sg_virt(&cryp->in_sgl);
  buf_out = sg_virt(&cryp->out_sgl);

  sg_copy_buf(buf_out, cryp->out_sg_save, 0,
       cryp->total_out_save, 1);

  len = ALIGN(cryp->total_in_save, cryp->hw_blocksize);
  pages = len ? get_order(len) : 1;
  free_pages((unsigned long)buf_in, pages);

  len = ALIGN(cryp->total_out_save, cryp->hw_blocksize);
  pages = len ? get_order(len) : 1;
  free_pages((unsigned long)buf_out, pages);
 }

 pm_runtime_mark_last_busy(cryp->dev);
 pm_runtime_put_autosuspend(cryp->dev);

 if (is_gcm(cryp) || is_ccm(cryp))
  crypto_finalize_aead_request(cryp->engine, cryp->areq, err);
 else
  crypto_finalize_ablkcipher_request(cryp->engine, cryp->req,
         err);

 memset(cryp->ctx->key, 0, cryp->ctx->keylen);
}
