
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sht21 {int humidity; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct sht21* dev_get_drvdata (struct device*) ;
 int sht21_update_measurements (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t sht21_humidity_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct sht21 *sht21 = dev_get_drvdata(dev);
 int ret;

 ret = sht21_update_measurements(dev);
 if (ret < 0)
  return ret;
 return sprintf(buf, "%d\n", sht21->humidity);
}
