
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {int dummy; } ;


 int ACS_ABO_BITPOS ;
 int ACTIVE_CTX_STATUS ;
 int CE_ENABLE_BITPOS ;
 int CTX_ENABLES ;
 unsigned int qat_hal_rd_ae_csr (struct icp_qat_fw_loader_handle*,unsigned int,int ) ;

int qat_hal_check_ae_active(struct icp_qat_fw_loader_handle *handle,
       unsigned int ae)
{
 unsigned int enable = 0, active = 0;

 enable = qat_hal_rd_ae_csr(handle, ae, CTX_ENABLES);
 active = qat_hal_rd_ae_csr(handle, ae, ACTIVE_CTX_STATUS);
 if ((enable & (0xff << CE_ENABLE_BITPOS)) ||
     (active & (1 << ACS_ABO_BITPOS)))
  return 1;
 else
  return 0;
}
