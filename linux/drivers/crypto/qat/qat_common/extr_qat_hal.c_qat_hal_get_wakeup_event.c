
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {int dummy; } ;


 int CSR_CTX_POINTER ;
 int CTX_WAKEUP_EVENTS_INDIRECT ;
 unsigned int qat_hal_rd_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ) ;
 int qat_hal_wr_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ,unsigned int) ;

__attribute__((used)) static void qat_hal_get_wakeup_event(struct icp_qat_fw_loader_handle *handle,
         unsigned char ae, unsigned char ctx,
         unsigned int *events)
{
 unsigned int cur_ctx;

 cur_ctx = qat_hal_rd_ae_csr(handle, ae, CSR_CTX_POINTER);
 qat_hal_wr_ae_csr(handle, ae, CSR_CTX_POINTER, ctx);
 *events = qat_hal_rd_ae_csr(handle, ae, CTX_WAKEUP_EVENTS_INDIRECT);
 qat_hal_wr_ae_csr(handle, ae, CSR_CTX_POINTER, cur_ctx);
}
