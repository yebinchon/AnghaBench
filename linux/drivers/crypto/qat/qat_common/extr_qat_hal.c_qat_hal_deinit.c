
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {struct icp_qat_fw_loader_handle* hal_handle; } ;


 int kfree (struct icp_qat_fw_loader_handle*) ;

void qat_hal_deinit(struct icp_qat_fw_loader_handle *handle)
{
 if (!handle)
  return;
 kfree(handle->hal_handle);
 kfree(handle);
}
