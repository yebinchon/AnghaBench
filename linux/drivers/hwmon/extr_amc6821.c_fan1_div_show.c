
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amc6821_data {int fan1_div; } ;
typedef int ssize_t ;


 struct amc6821_data* amc6821_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t fan1_div_show(struct device *dev,
        struct device_attribute *devattr, char *buf)
{
 struct amc6821_data *data = amc6821_update_device(dev);
 return sprintf(buf, "%d\n", data->fan1_div);
}
