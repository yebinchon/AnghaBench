
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627hf_data {int * in_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int show_in_0 (struct w83627hf_data*,char*,int ) ;
 struct w83627hf_data* w83627hf_update_device (struct device*) ;

__attribute__((used)) static ssize_t in0_min_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct w83627hf_data *data = w83627hf_update_device(dev);
 return show_in_0(data, buf, data->in_min[0]);
}
