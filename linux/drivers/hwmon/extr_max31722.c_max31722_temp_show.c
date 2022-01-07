
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max31722_data {int spi_device; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int s16 ;


 int MAX31722_REG_TEMP_LSB ;
 struct max31722_data* dev_get_drvdata (struct device*) ;
 scalar_t__ le16_to_cpu (scalar_t__) ;
 scalar_t__ spi_w8r16 (int ,int ) ;
 scalar_t__ sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t max31722_temp_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 ssize_t ret;
 struct max31722_data *data = dev_get_drvdata(dev);

 ret = spi_w8r16(data->spi_device, MAX31722_REG_TEMP_LSB);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%d\n", (s16)le16_to_cpu(ret) * 125 / 32);
}
