
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm9240_data {int temp; } ;
typedef int ssize_t ;


 struct adm9240_data* adm9240_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t temp1_input_show(struct device *dev,
    struct device_attribute *dummy, char *buf)
{
 struct adm9240_data *data = adm9240_update_device(dev);
 return sprintf(buf, "%d\n", data->temp / 128 * 500);
}
