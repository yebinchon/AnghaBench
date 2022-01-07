
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


 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;
 int MC13783_ADC_BPDIV2 ;
 int mc13783_adc_read (struct device*,struct device_attribute*,unsigned int*) ;
 TYPE_1__* platform_get_device_id (struct platform_device*) ;
 int sprintf (char*,char*,unsigned int) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t mc13783_adc_uid_show(struct device *dev,
        struct device_attribute *devattr,
        char *buf)
{
 unsigned int val;
 struct platform_device *pdev = to_platform_device(dev);
 kernel_ulong_t driver_data = platform_get_device_id(pdev)->driver_data;
 int ret = mc13783_adc_read(dev, devattr, &val);

 if (ret)
  return ret;

 if (driver_data & MC13783_ADC_BPDIV2)

  val = DIV_ROUND_CLOSEST(val * 4800, 1024);
 else

  val = DIV_ROUND_CLOSEST(val * 2555, 1024);

 return sprintf(buf, "%u\n", val);
}
