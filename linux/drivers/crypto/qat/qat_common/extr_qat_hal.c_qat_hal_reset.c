
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icp_qat_fw_loader_handle {TYPE_1__* hal_handle; } ;
struct TYPE_2__ {unsigned int ae_mask; unsigned int slice_mask; } ;


 unsigned int GET_GLB_CSR (struct icp_qat_fw_loader_handle*,int ) ;
 int ICP_RESET ;
 unsigned int RST_CSR_AE_LSB ;
 unsigned int RST_CSR_QAT_LSB ;
 int SET_GLB_CSR (struct icp_qat_fw_loader_handle*,int ,unsigned int) ;

void qat_hal_reset(struct icp_qat_fw_loader_handle *handle)
{
 unsigned int ae_reset_csr;

 ae_reset_csr = GET_GLB_CSR(handle, ICP_RESET);
 ae_reset_csr |= handle->hal_handle->ae_mask << RST_CSR_AE_LSB;
 ae_reset_csr |= handle->hal_handle->slice_mask << RST_CSR_QAT_LSB;
 SET_GLB_CSR(handle, ICP_RESET, ae_reset_csr);
}
