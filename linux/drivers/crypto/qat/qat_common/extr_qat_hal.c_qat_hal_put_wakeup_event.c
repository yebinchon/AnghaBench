
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {int dummy; } ;


 int CSR_CTX_POINTER ;
 int CTX_WAKEUP_EVENTS_INDIRECT ;
 unsigned int ICP_QAT_UCLO_MAX_CTX ;
 unsigned int qat_hal_rd_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ) ;
 int qat_hal_wr_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ,unsigned int) ;

__attribute__((used)) static void qat_hal_put_wakeup_event(struct icp_qat_fw_loader_handle *handle,
         unsigned char ae, unsigned int ctx_mask,
         unsigned int events)
{
 unsigned int ctx, cur_ctx;

 cur_ctx = qat_hal_rd_ae_csr(handle, ae, CSR_CTX_POINTER);
 for (ctx = 0; ctx < ICP_QAT_UCLO_MAX_CTX; ctx++) {
  if (!(ctx_mask & (1 << ctx)))
   continue;
  qat_hal_wr_ae_csr(handle, ae, CSR_CTX_POINTER, ctx);
  qat_hal_wr_ae_csr(handle, ae, CTX_WAKEUP_EVENTS_INDIRECT,
      events);
 }
 qat_hal_wr_ae_csr(handle, ae, CSR_CTX_POINTER, cur_ctx);
}
