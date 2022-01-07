
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ads7846 {int disabled; } ;
typedef int ssize_t ;


 struct ads7846* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ads7846_disable_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct ads7846 *ts = dev_get_drvdata(dev);

 return sprintf(buf, "%u\n", ts->disabled);
}
