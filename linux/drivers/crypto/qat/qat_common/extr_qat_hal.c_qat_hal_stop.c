
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {int fw_auth; } ;


 int qat_hal_disable_ctx (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int) ;

void qat_hal_stop(struct icp_qat_fw_loader_handle *handle, unsigned char ae,
    unsigned int ctx_mask)
{
 if (!handle->fw_auth)
  qat_hal_disable_ctx(handle, ae, ctx_mask);
}
