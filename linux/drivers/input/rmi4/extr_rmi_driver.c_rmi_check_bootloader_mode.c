
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rmi_driver_data {int bootloader_mode; } ;
struct rmi_device {int dev; } ;
struct pdt_entry {int function_number; int function_version; int data_base_addr; } ;


 int BIT (int) ;
 int dev_err (int *,char*,int) ;
 struct rmi_driver_data* dev_get_drvdata (int *) ;
 int rmi_read (struct rmi_device*,int ,int*) ;

__attribute__((used)) static int rmi_check_bootloader_mode(struct rmi_device *rmi_dev,
         const struct pdt_entry *pdt)
{
 struct rmi_driver_data *data = dev_get_drvdata(&rmi_dev->dev);
 int ret;
 u8 status;

 if (pdt->function_number == 0x34 && pdt->function_version > 1) {
  ret = rmi_read(rmi_dev, pdt->data_base_addr, &status);
  if (ret) {
   dev_err(&rmi_dev->dev,
    "Failed to read F34 status: %d.\n", ret);
   return ret;
  }

  if (status & BIT(7))
   data->bootloader_mode = 1;
 } else if (pdt->function_number == 0x01) {
  ret = rmi_read(rmi_dev, pdt->data_base_addr, &status);
  if (ret) {
   dev_err(&rmi_dev->dev,
    "Failed to read F01 status: %d.\n", ret);
   return ret;
  }

  if (status & BIT(6))
   data->bootloader_mode = 1;
 }

 return 0;
}
