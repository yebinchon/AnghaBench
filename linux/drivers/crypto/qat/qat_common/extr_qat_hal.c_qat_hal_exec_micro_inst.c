
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct icp_qat_fw_loader_handle {TYPE_1__* hal_handle; } ;
struct TYPE_2__ {unsigned int max_ustore; unsigned int upc_mask; } ;


 unsigned char ACS_ACNO ;
 int ACTIVE_CTX_STATUS ;
 int AE_MISC_CONTROL ;
 int CC_ENABLE ;
 unsigned int CLR_BIT (unsigned int,int ) ;
 int CTX_ARB_CNTL ;
 int CTX_ENABLES ;
 int CTX_SIG_EVENTS_ACTIVE ;
 int CTX_SIG_EVENTS_INDIRECT ;
 int CTX_STS_INDIRECT ;
 int EFAULT ;
 int EINVAL ;
 int FUTURE_COUNT_SIGNAL_INDIRECT ;
 unsigned int IGNORE_W1C_MASK ;
 int INDIRECT_LM_ADDR_0_BYTE_INDEX ;
 int INDIRECT_LM_ADDR_1_BYTE_INDEX ;
 int LM_ADDR_0_INDIRECT ;
 int LM_ADDR_1_INDIRECT ;
 int MAX_EXEC_INST ;
 int MMC_SHARE_CS_BITPOS ;
 unsigned int XCWE_VOLUNTARY ;
 int pr_err (char*,unsigned int) ;
 int qat_hal_disable_ctx (struct icp_qat_fw_loader_handle*,unsigned char,int) ;
 int qat_hal_enable_ctx (struct icp_qat_fw_loader_handle*,unsigned char,int) ;
 int qat_hal_get_uwords (struct icp_qat_fw_loader_handle*,unsigned char,int ,unsigned int,int *) ;
 int qat_hal_get_wakeup_event (struct icp_qat_fw_loader_handle*,unsigned char,unsigned char,unsigned int*) ;
 int qat_hal_put_wakeup_event (struct icp_qat_fw_loader_handle*,unsigned char,int,unsigned int) ;
 unsigned int qat_hal_rd_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ) ;
 unsigned int qat_hal_rd_indr_csr (struct icp_qat_fw_loader_handle*,unsigned char,unsigned char,int ) ;
 scalar_t__ qat_hal_wait_cycles (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int,int) ;
 int qat_hal_wr_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ,unsigned int) ;
 int qat_hal_wr_indr_csr (struct icp_qat_fw_loader_handle*,unsigned char,int,int ,unsigned int) ;
 int qat_hal_wr_uwords (struct icp_qat_fw_loader_handle*,unsigned char,int ,unsigned int,int *) ;

__attribute__((used)) static int qat_hal_exec_micro_inst(struct icp_qat_fw_loader_handle *handle,
       unsigned char ae, unsigned char ctx,
       uint64_t *micro_inst, unsigned int inst_num,
       int code_off, unsigned int max_cycle,
       unsigned int *endpc)
{
 uint64_t savuwords[MAX_EXEC_INST];
 unsigned int ind_lm_addr0, ind_lm_addr1;
 unsigned int ind_lm_addr_byte0, ind_lm_addr_byte1;
 unsigned int ind_cnt_sig;
 unsigned int ind_sig, act_sig;
 unsigned int csr_val = 0, newcsr_val;
 unsigned int savctx;
 unsigned int savcc, wakeup_events, savpc;
 unsigned int ctxarb_ctl, ctx_enables;

 if ((inst_num > handle->hal_handle->max_ustore) || !micro_inst) {
  pr_err("QAT: invalid instruction num %d\n", inst_num);
  return -EINVAL;
 }

 ind_lm_addr0 = qat_hal_rd_indr_csr(handle, ae, ctx, LM_ADDR_0_INDIRECT);
 ind_lm_addr1 = qat_hal_rd_indr_csr(handle, ae, ctx, LM_ADDR_1_INDIRECT);
 ind_lm_addr_byte0 = qat_hal_rd_indr_csr(handle, ae, ctx,
      INDIRECT_LM_ADDR_0_BYTE_INDEX);
 ind_lm_addr_byte1 = qat_hal_rd_indr_csr(handle, ae, ctx,
      INDIRECT_LM_ADDR_1_BYTE_INDEX);
 if (inst_num <= MAX_EXEC_INST)
  qat_hal_get_uwords(handle, ae, 0, inst_num, savuwords);
 qat_hal_get_wakeup_event(handle, ae, ctx, &wakeup_events);
 savpc = qat_hal_rd_indr_csr(handle, ae, ctx, CTX_STS_INDIRECT);
 savpc = (savpc & handle->hal_handle->upc_mask) >> 0;
 ctx_enables = qat_hal_rd_ae_csr(handle, ae, CTX_ENABLES);
 ctx_enables &= IGNORE_W1C_MASK;
 savcc = qat_hal_rd_ae_csr(handle, ae, CC_ENABLE);
 savctx = qat_hal_rd_ae_csr(handle, ae, ACTIVE_CTX_STATUS);
 ctxarb_ctl = qat_hal_rd_ae_csr(handle, ae, CTX_ARB_CNTL);
 ind_cnt_sig = qat_hal_rd_indr_csr(handle, ae, ctx,
       FUTURE_COUNT_SIGNAL_INDIRECT);
 ind_sig = qat_hal_rd_indr_csr(handle, ae, ctx,
          CTX_SIG_EVENTS_INDIRECT);
 act_sig = qat_hal_rd_ae_csr(handle, ae, CTX_SIG_EVENTS_ACTIVE);

 qat_hal_wr_ae_csr(handle, ae, CTX_ENABLES, ctx_enables);
 qat_hal_wr_uwords(handle, ae, 0, inst_num, micro_inst);
 qat_hal_wr_indr_csr(handle, ae, (1 << ctx), CTX_STS_INDIRECT, 0);
 qat_hal_wr_ae_csr(handle, ae, ACTIVE_CTX_STATUS, ctx & ACS_ACNO);
 if (code_off)
  qat_hal_wr_ae_csr(handle, ae, CC_ENABLE, savcc & 0xffffdfff);
 qat_hal_put_wakeup_event(handle, ae, (1 << ctx), XCWE_VOLUNTARY);
 qat_hal_wr_indr_csr(handle, ae, (1 << ctx), CTX_SIG_EVENTS_INDIRECT, 0);
 qat_hal_wr_ae_csr(handle, ae, CTX_SIG_EVENTS_ACTIVE, 0);
 qat_hal_enable_ctx(handle, ae, (1 << ctx));

 if (qat_hal_wait_cycles(handle, ae, max_cycle, 1) != 0)
  return -EFAULT;
 if (endpc) {
  unsigned int ctx_status;

  ctx_status = qat_hal_rd_indr_csr(handle, ae, ctx,
       CTX_STS_INDIRECT);
  *endpc = ctx_status & handle->hal_handle->upc_mask;
 }

 qat_hal_disable_ctx(handle, ae, (1 << ctx));
 if (inst_num <= MAX_EXEC_INST)
  qat_hal_wr_uwords(handle, ae, 0, inst_num, savuwords);
 qat_hal_put_wakeup_event(handle, ae, (1 << ctx), wakeup_events);
 qat_hal_wr_indr_csr(handle, ae, (1 << ctx), CTX_STS_INDIRECT,
       handle->hal_handle->upc_mask & savpc);
 csr_val = qat_hal_rd_ae_csr(handle, ae, AE_MISC_CONTROL);
 newcsr_val = CLR_BIT(csr_val, MMC_SHARE_CS_BITPOS);
 qat_hal_wr_ae_csr(handle, ae, AE_MISC_CONTROL, newcsr_val);
 qat_hal_wr_ae_csr(handle, ae, CC_ENABLE, savcc);
 qat_hal_wr_ae_csr(handle, ae, ACTIVE_CTX_STATUS, savctx & ACS_ACNO);
 qat_hal_wr_ae_csr(handle, ae, CTX_ARB_CNTL, ctxarb_ctl);
 qat_hal_wr_indr_csr(handle, ae, (1 << ctx),
       LM_ADDR_0_INDIRECT, ind_lm_addr0);
 qat_hal_wr_indr_csr(handle, ae, (1 << ctx),
       LM_ADDR_1_INDIRECT, ind_lm_addr1);
 qat_hal_wr_indr_csr(handle, ae, (1 << ctx),
       INDIRECT_LM_ADDR_0_BYTE_INDEX, ind_lm_addr_byte0);
 qat_hal_wr_indr_csr(handle, ae, (1 << ctx),
       INDIRECT_LM_ADDR_1_BYTE_INDEX, ind_lm_addr_byte1);
 qat_hal_wr_indr_csr(handle, ae, (1 << ctx),
       FUTURE_COUNT_SIGNAL_INDIRECT, ind_cnt_sig);
 qat_hal_wr_indr_csr(handle, ae, (1 << ctx),
       CTX_SIG_EVENTS_INDIRECT, ind_sig);
 qat_hal_wr_ae_csr(handle, ae, CTX_SIG_EVENTS_ACTIVE, act_sig);
 qat_hal_wr_ae_csr(handle, ae, CTX_ENABLES, ctx_enables);

 return 0;
}
