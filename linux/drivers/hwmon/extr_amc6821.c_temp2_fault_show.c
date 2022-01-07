
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amc6821_data {int stat1; } ;
typedef int ssize_t ;


 int AMC6821_STAT1_RTF ;
 struct amc6821_data* amc6821_update_device (struct device*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t temp2_fault_show(struct device *dev,
    struct device_attribute *devattr, char *buf)
{
 struct amc6821_data *data = amc6821_update_device(dev);
 if (data->stat1 & AMC6821_STAT1_RTF)
  return sprintf(buf, "1");
 else
  return sprintf(buf, "0");
}
