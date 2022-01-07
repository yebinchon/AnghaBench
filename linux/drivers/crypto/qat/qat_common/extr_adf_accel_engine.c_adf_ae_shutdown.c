
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_hw_device_data {int fw_name; } ;
struct adf_fw_loader_data {int fw_loader; } ;
struct adf_accel_dev {struct adf_fw_loader_data* fw_loader; struct adf_hw_device_data* hw_device; } ;


 int kfree (struct adf_fw_loader_data*) ;
 int qat_hal_deinit (int ) ;

int adf_ae_shutdown(struct adf_accel_dev *accel_dev)
{
 struct adf_fw_loader_data *loader_data = accel_dev->fw_loader;
 struct adf_hw_device_data *hw_device = accel_dev->hw_device;

 if (!hw_device->fw_name)
  return 0;

 qat_hal_deinit(loader_data->fw_loader);
 kfree(accel_dev->fw_loader);
 accel_dev->fw_loader = ((void*)0);
 return 0;
}
