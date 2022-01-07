
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf8591_data {int aout; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct pcf8591_data* i2c_get_clientdata (int ) ;
 int sprintf (char*,char*,int) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t out0_output_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct pcf8591_data *data = i2c_get_clientdata(to_i2c_client(dev));
 return sprintf(buf, "%d\n", data->aout * 10);
}
