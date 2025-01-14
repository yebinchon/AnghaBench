
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct icp_qat_fw_loader_handle {TYPE_1__* hal_handle; } ;
struct TYPE_2__ {unsigned char ae_max_num; int upc_mask; } ;


 unsigned int ACS_ACNO ;
 int ACTIVE_CTX_STATUS ;
 int AE_MISC_CONTROL ;
 int ARRAY_SIZE (scalar_t__) ;
 int CC_ENABLE ;
 unsigned int CE_NN_MODE ;
 int CTX_ARB_CNTL ;
 int CTX_ENABLES ;
 int CTX_SIG_EVENTS_ACTIVE ;
 int CTX_SIG_EVENTS_INDIRECT ;
 int CTX_STS_INDIRECT ;
 int EINVAL ;
 unsigned int ICP_QAT_UCLO_AE_ALL_CTX ;
 unsigned int IGNORE_W1C_MASK ;
 unsigned int INIT_CCENABLE_VALUE ;
 unsigned int INIT_CTX_ARB_VALUE ;
 unsigned int INIT_CTX_ENABLE_VALUE ;
 int INIT_PC_VALUE ;
 int INIT_SIG_EVENTS_VALUE ;
 int INIT_WAKEUP_EVENTS_VALUE ;
 int MAX_RETRY_TIMES ;
 int MMC_SHARE_CS_BITPOS ;
 int XCWE_VOLUNTARY ;
 scalar_t__ inst ;
 int pr_err (char*,unsigned char) ;
 int qat_hal_disable_ctx (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int) ;
 int qat_hal_enable_ctx (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int) ;
 int qat_hal_put_sig_event (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int,int ) ;
 int qat_hal_put_wakeup_event (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int,int ) ;
 unsigned int qat_hal_rd_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ) ;
 int qat_hal_wait_cycles (struct icp_qat_fw_loader_handle*,unsigned char,int,int) ;
 int qat_hal_wr_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ,unsigned int) ;
 int qat_hal_wr_indr_csr (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int,int ,int) ;
 int qat_hal_wr_uwords (struct icp_qat_fw_loader_handle*,unsigned char,int ,int ,int *) ;

__attribute__((used)) static int qat_hal_clear_gpr(struct icp_qat_fw_loader_handle *handle)
{
 unsigned char ae;
 unsigned int ctx_mask = ICP_QAT_UCLO_AE_ALL_CTX;
 int times = MAX_RETRY_TIMES;
 unsigned int csr_val = 0;
 unsigned int savctx = 0;
 int ret = 0;

 for (ae = 0; ae < handle->hal_handle->ae_max_num; ae++) {
  csr_val = qat_hal_rd_ae_csr(handle, ae, AE_MISC_CONTROL);
  csr_val &= ~(1 << MMC_SHARE_CS_BITPOS);
  qat_hal_wr_ae_csr(handle, ae, AE_MISC_CONTROL, csr_val);
  csr_val = qat_hal_rd_ae_csr(handle, ae, CTX_ENABLES);
  csr_val &= IGNORE_W1C_MASK;
  csr_val |= CE_NN_MODE;
  qat_hal_wr_ae_csr(handle, ae, CTX_ENABLES, csr_val);
  qat_hal_wr_uwords(handle, ae, 0, ARRAY_SIZE(inst),
      (uint64_t *)inst);
  qat_hal_wr_indr_csr(handle, ae, ctx_mask, CTX_STS_INDIRECT,
        handle->hal_handle->upc_mask &
        INIT_PC_VALUE);
  savctx = qat_hal_rd_ae_csr(handle, ae, ACTIVE_CTX_STATUS);
  qat_hal_wr_ae_csr(handle, ae, ACTIVE_CTX_STATUS, 0);
  qat_hal_put_wakeup_event(handle, ae, ctx_mask, XCWE_VOLUNTARY);
  qat_hal_wr_indr_csr(handle, ae, ctx_mask,
        CTX_SIG_EVENTS_INDIRECT, 0);
  qat_hal_wr_ae_csr(handle, ae, CTX_SIG_EVENTS_ACTIVE, 0);
  qat_hal_enable_ctx(handle, ae, ctx_mask);
 }
 for (ae = 0; ae < handle->hal_handle->ae_max_num; ae++) {

  do {
   ret = qat_hal_wait_cycles(handle, ae, 20, 1);
  } while (ret && times--);

  if (times < 0) {
   pr_err("QAT: clear GPR of AE %d failed", ae);
   return -EINVAL;
  }
  qat_hal_disable_ctx(handle, ae, ctx_mask);
  qat_hal_wr_ae_csr(handle, ae, ACTIVE_CTX_STATUS,
      savctx & ACS_ACNO);
  qat_hal_wr_ae_csr(handle, ae, CTX_ENABLES,
      INIT_CTX_ENABLE_VALUE);
  qat_hal_wr_indr_csr(handle, ae, ctx_mask, CTX_STS_INDIRECT,
        handle->hal_handle->upc_mask &
        INIT_PC_VALUE);
  qat_hal_wr_ae_csr(handle, ae, CTX_ARB_CNTL, INIT_CTX_ARB_VALUE);
  qat_hal_wr_ae_csr(handle, ae, CC_ENABLE, INIT_CCENABLE_VALUE);
  qat_hal_put_wakeup_event(handle, ae, ctx_mask,
      INIT_WAKEUP_EVENTS_VALUE);
  qat_hal_put_sig_event(handle, ae, ctx_mask,
          INIT_SIG_EVENTS_VALUE);
 }
 return 0;
}
