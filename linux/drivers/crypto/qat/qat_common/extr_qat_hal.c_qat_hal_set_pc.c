
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icp_qat_fw_loader_handle {TYPE_1__* hal_handle; } ;
struct TYPE_2__ {unsigned int upc_mask; } ;


 int CTX_STS_INDIRECT ;
 int qat_hal_wr_indr_csr (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int,int ,unsigned int) ;

void qat_hal_set_pc(struct icp_qat_fw_loader_handle *handle,
      unsigned char ae, unsigned int ctx_mask, unsigned int upc)
{
 qat_hal_wr_indr_csr(handle, ae, ctx_mask, CTX_STS_INDIRECT,
       handle->hal_handle->upc_mask & upc);
}
