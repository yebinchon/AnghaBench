
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i2c_dev {int shared_with_punit; int release_lock; int acquire_lock; int dev; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (int ) ;
 int EPROBE_DEFER ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int dev_info (int ,char*) ;
 int iosf_mbi_available () ;
 int iosf_mbi_block_punit_i2c_access ;
 int iosf_mbi_unblock_punit_i2c_access ;

int i2c_dw_probe_lock_support(struct dw_i2c_dev *dev)
{
 acpi_status status;
 unsigned long long shared_host = 0;
 acpi_handle handle;

 if (!dev || !dev->dev)
  return 0;

 handle = ACPI_HANDLE(dev->dev);
 if (!handle)
  return 0;

 status = acpi_evaluate_integer(handle, "_SEM", ((void*)0), &shared_host);
 if (ACPI_FAILURE(status))
  return 0;

 if (!shared_host)
  return 0;

 if (!iosf_mbi_available())
  return -EPROBE_DEFER;

 dev_info(dev->dev, "I2C bus managed by PUNIT\n");
 dev->acquire_lock = iosf_mbi_block_punit_i2c_access;
 dev->release_lock = iosf_mbi_unblock_punit_i2c_access;
 dev->shared_with_punit = 1;

 return 0;
}
