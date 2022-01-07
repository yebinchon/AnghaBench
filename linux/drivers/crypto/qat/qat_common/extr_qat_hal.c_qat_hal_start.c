
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {scalar_t__ fw_auth; } ;


 int FCU_CONTROL ;
 int FCU_CTRL_CMD_START ;
 int FCU_STATUS ;
 unsigned int FCU_STS_DONE_POS ;
 int FW_AUTH_MAX_RETRY ;
 int FW_AUTH_WAIT_PERIOD ;
 unsigned int GET_CAP_CSR (struct icp_qat_fw_loader_handle*,int ) ;
 unsigned int ICP_QAT_UCLO_AE_ALL_CTX ;
 int SET_CAP_CSR (struct icp_qat_fw_loader_handle*,int ,int ) ;
 int msleep (int ) ;
 int pr_err (char*,unsigned char,unsigned int) ;
 int qat_hal_enable_ctx (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int) ;
 int qat_hal_put_wakeup_event (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int,int) ;

void qat_hal_start(struct icp_qat_fw_loader_handle *handle, unsigned char ae,
     unsigned int ctx_mask)
{
 int retry = 0;
 unsigned int fcu_sts = 0;

 if (handle->fw_auth) {
  SET_CAP_CSR(handle, FCU_CONTROL, FCU_CTRL_CMD_START);
  do {
   msleep(FW_AUTH_WAIT_PERIOD);
   fcu_sts = GET_CAP_CSR(handle, FCU_STATUS);
   if (((fcu_sts >> FCU_STS_DONE_POS) & 0x1))
    return;
  } while (retry++ < FW_AUTH_MAX_RETRY);
  pr_err("QAT: start error (AE 0x%x FCU_STS = 0x%x)\n", ae,
         fcu_sts);
 } else {
  qat_hal_put_wakeup_event(handle, ae, (~ctx_mask) &
     ICP_QAT_UCLO_AE_ALL_CTX, 0x10000);
  qat_hal_enable_ctx(handle, ae, ctx_mask);
 }
}
