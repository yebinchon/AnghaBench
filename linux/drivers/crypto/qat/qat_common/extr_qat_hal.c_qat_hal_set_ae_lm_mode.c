
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {int dummy; } ;
typedef enum icp_qat_uof_regtype { ____Placeholder_icp_qat_uof_regtype } icp_qat_uof_regtype ;


 int CE_LMADDR_0_GLOBAL_BITPOS ;
 int CE_LMADDR_1_GLOBAL_BITPOS ;
 unsigned int CLR_BIT (unsigned int,int ) ;
 int CTX_ENABLES ;
 int EINVAL ;


 unsigned int IGNORE_W1C_MASK ;
 unsigned int SET_BIT (unsigned int,int ) ;
 int pr_err (char*,int) ;
 unsigned int qat_hal_rd_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ) ;
 int qat_hal_wr_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ,unsigned int) ;

int qat_hal_set_ae_lm_mode(struct icp_qat_fw_loader_handle *handle,
      unsigned char ae, enum icp_qat_uof_regtype lm_type,
      unsigned char mode)
{
 unsigned int csr, new_csr;

 csr = qat_hal_rd_ae_csr(handle, ae, CTX_ENABLES);
 csr &= IGNORE_W1C_MASK;
 switch (lm_type) {
 case 129:
  new_csr = (mode) ?
   SET_BIT(csr, CE_LMADDR_0_GLOBAL_BITPOS) :
   CLR_BIT(csr, CE_LMADDR_0_GLOBAL_BITPOS);
  break;
 case 128:
  new_csr = (mode) ?
   SET_BIT(csr, CE_LMADDR_1_GLOBAL_BITPOS) :
   CLR_BIT(csr, CE_LMADDR_1_GLOBAL_BITPOS);
  break;
 default:
  pr_err("QAT: lmType = 0x%x\n", lm_type);
  return -EINVAL;
 }

 if (new_csr != csr)
  qat_hal_wr_ae_csr(handle, ae, CTX_ENABLES, new_csr);
 return 0;
}
