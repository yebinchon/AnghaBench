
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {int dummy; } ;


 int CE_NN_MODE_BITPOS ;
 unsigned int CLR_BIT (unsigned int,int ) ;
 int CTX_ENABLES ;
 unsigned int IGNORE_W1C_MASK ;
 unsigned int SET_BIT (unsigned int,int ) ;
 unsigned int qat_hal_rd_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ) ;
 int qat_hal_wr_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ,unsigned int) ;

int qat_hal_set_ae_nn_mode(struct icp_qat_fw_loader_handle *handle,
      unsigned char ae, unsigned char mode)
{
 unsigned int csr, new_csr;

 csr = qat_hal_rd_ae_csr(handle, ae, CTX_ENABLES);
 csr &= IGNORE_W1C_MASK;

 new_csr = (mode) ?
  SET_BIT(csr, CE_NN_MODE_BITPOS) :
  CLR_BIT(csr, CE_NN_MODE_BITPOS);

 if (new_csr != csr)
  qat_hal_wr_ae_csr(handle, ae, CTX_ENABLES, new_csr);

 return 0;
}
