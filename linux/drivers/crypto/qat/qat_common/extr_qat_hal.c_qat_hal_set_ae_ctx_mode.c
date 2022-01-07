
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {int dummy; } ;


 int CE_INUSE_CONTEXTS_BITPOS ;
 unsigned int CLR_BIT (unsigned int,int ) ;
 int CTX_ENABLES ;
 int EINVAL ;
 unsigned int IGNORE_W1C_MASK ;
 unsigned int SET_BIT (unsigned int,int ) ;
 int pr_err (char*,unsigned char) ;
 unsigned int qat_hal_rd_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ) ;
 int qat_hal_wr_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ,unsigned int) ;

int qat_hal_set_ae_ctx_mode(struct icp_qat_fw_loader_handle *handle,
       unsigned char ae, unsigned char mode)
{
 unsigned int csr, new_csr;

 if ((mode != 4) && (mode != 8)) {
  pr_err("QAT: bad ctx mode=%d\n", mode);
  return -EINVAL;
 }


 csr = qat_hal_rd_ae_csr(handle, ae, CTX_ENABLES);
 csr = IGNORE_W1C_MASK & csr;
 new_csr = (mode == 4) ?
  SET_BIT(csr, CE_INUSE_CONTEXTS_BITPOS) :
  CLR_BIT(csr, CE_INUSE_CONTEXTS_BITPOS);
 qat_hal_wr_ae_csr(handle, ae, CTX_ENABLES, new_csr);
 return 0;
}
