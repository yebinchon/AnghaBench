
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt8231_data {int* temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct vt8231_data* vt8231_update_device (struct device*) ;

__attribute__((used)) static ssize_t temp1_input_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct vt8231_data *data = vt8231_update_device(dev);
 return sprintf(buf, "%d\n", data->temp[0] * 250);
}
