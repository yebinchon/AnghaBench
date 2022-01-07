
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picolcd_data {int status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int PICOLCD_BOOTLOADER ;
 struct picolcd_data* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t picolcd_operation_mode_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct picolcd_data *data = dev_get_drvdata(dev);

 if (data->status & PICOLCD_BOOTLOADER)
  return snprintf(buf, PAGE_SIZE, "[bootloader] lcd\n");
 else
  return snprintf(buf, PAGE_SIZE, "bootloader [lcd]\n");
}
