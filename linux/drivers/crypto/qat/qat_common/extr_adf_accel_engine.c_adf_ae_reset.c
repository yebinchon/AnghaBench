
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_fw_loader_data {int fw_loader; } ;
struct adf_accel_dev {struct adf_fw_loader_data* fw_loader; } ;


 int EFAULT ;
 scalar_t__ qat_hal_clr_reset (int ) ;
 int qat_hal_reset (int ) ;

__attribute__((used)) static int adf_ae_reset(struct adf_accel_dev *accel_dev, int ae)
{
 struct adf_fw_loader_data *loader_data = accel_dev->fw_loader;

 qat_hal_reset(loader_data->fw_loader);
 if (qat_hal_clr_reset(loader_data->fw_loader))
  return -EFAULT;

 return 0;
}
