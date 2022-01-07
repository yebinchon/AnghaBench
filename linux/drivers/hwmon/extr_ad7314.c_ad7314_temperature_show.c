
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7314_data {int spi_dev; } ;
typedef int ssize_t ;
typedef int s16 ;
struct TYPE_2__ {int driver_data; } ;


 int AD7314_TEMP_MASK ;
 int AD7314_TEMP_SHIFT ;
 int ADT7301_TEMP_MASK ;
 int DIV_ROUND_CLOSEST (int,int) ;
 int EINVAL ;

 int ad7314_spi_read (struct ad7314_data*) ;


 struct ad7314_data* dev_get_drvdata (struct device*) ;
 int sign_extend32 (int,int) ;
 TYPE_1__* spi_get_device_id (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ad7314_temperature_show(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct ad7314_data *chip = dev_get_drvdata(dev);
 s16 data;
 int ret;

 ret = ad7314_spi_read(chip);
 if (ret < 0)
  return ret;
 switch (spi_get_device_id(chip->spi_dev)->driver_data) {
 case 130:
  data = (ret & AD7314_TEMP_MASK) >> AD7314_TEMP_SHIFT;
  data = sign_extend32(data, 9);

  return sprintf(buf, "%d\n", 250 * data);
 case 129:
 case 128:





  data = ret & ADT7301_TEMP_MASK;
  data = sign_extend32(data, 13);

  return sprintf(buf, "%d\n",
          DIV_ROUND_CLOSEST(data * 3125, 100));
 default:
  return -EINVAL;
 }
}
