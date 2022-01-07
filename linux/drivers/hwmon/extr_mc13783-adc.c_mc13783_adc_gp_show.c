
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;
 int mc13783_adc_read (struct device*,struct device_attribute*,unsigned int*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static ssize_t mc13783_adc_gp_show(struct device *dev,
       struct device_attribute *devattr,
       char *buf)
{
 unsigned val;
 int ret = mc13783_adc_read(dev, devattr, &val);

 if (ret)
  return ret;





 val = DIV_ROUND_CLOSEST(val * 9, 4);

 return sprintf(buf, "%u\n", val);
}
