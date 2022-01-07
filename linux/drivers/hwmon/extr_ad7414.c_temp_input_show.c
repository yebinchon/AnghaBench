
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7414_data {int temp_input; } ;
typedef int ssize_t ;


 int ad7414_temp_from_reg (int ) ;
 struct ad7414_data* ad7414_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t temp_input_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct ad7414_data *data = ad7414_update_device(dev);
 return sprintf(buf, "%d\n", ad7414_temp_from_reg(data->temp_input));
}
