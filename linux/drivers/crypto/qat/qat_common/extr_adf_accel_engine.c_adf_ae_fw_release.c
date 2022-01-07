
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_hw_device_data {int fw_name; } ;
struct adf_fw_loader_data {int * fw_loader; int * mmp_fw; int * uof_fw; } ;
struct adf_accel_dev {struct adf_hw_device_data* hw_device; struct adf_fw_loader_data* fw_loader; } ;


 int qat_hal_deinit (int *) ;
 int qat_uclo_del_uof_obj (int *) ;
 int release_firmware (int *) ;

void adf_ae_fw_release(struct adf_accel_dev *accel_dev)
{
 struct adf_fw_loader_data *loader_data = accel_dev->fw_loader;
 struct adf_hw_device_data *hw_device = accel_dev->hw_device;

 if (!hw_device->fw_name)
  return;

 qat_uclo_del_uof_obj(loader_data->fw_loader);
 qat_hal_deinit(loader_data->fw_loader);
 release_firmware(loader_data->uof_fw);
 release_firmware(loader_data->mmp_fw);
 loader_data->uof_fw = ((void*)0);
 loader_data->mmp_fw = ((void*)0);
 loader_data->fw_loader = ((void*)0);
}
