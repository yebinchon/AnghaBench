
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int kernel_ulong_t ;
struct TYPE_2__ {int driver_data; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int MC13783_ADC_BPDIV2 ;
 int mc13783_adc_read (struct device*,struct device_attribute*,unsigned int*) ;
 TYPE_1__* platform_get_device_id (struct platform_device*) ;
 int sprintf (char*,char*,int) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t mc13783_adc_temp_show(struct device *dev,
         struct device_attribute *devattr,
         char *buf)
{
 unsigned int val;
 struct platform_device *pdev = to_platform_device(dev);
 kernel_ulong_t driver_data = platform_get_device_id(pdev)->driver_data;
 int ret = mc13783_adc_read(dev, devattr, &val);

 if (ret)
  return ret;

 if (driver_data & MC13783_ADC_BPDIV2) {





  ret = DIV_ROUND_CLOSEST(-2635920 + val * 4244, 10);
 } else {





  ret = 346480 - 1140 * val;
 }

 return sprintf(buf, "%d\n", ret);
}
