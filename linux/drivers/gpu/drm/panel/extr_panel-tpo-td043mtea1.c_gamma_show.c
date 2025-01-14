
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td043mtea1_panel {int* gamma; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 unsigned int ARRAY_SIZE (int*) ;
 scalar_t__ PAGE_SIZE ;
 struct td043mtea1_panel* dev_get_drvdata (struct device*) ;
 int snprintf (char*,scalar_t__,char*,int) ;

__attribute__((used)) static ssize_t gamma_show(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 struct td043mtea1_panel *lcd = dev_get_drvdata(dev);
 ssize_t len = 0;
 unsigned int i;
 int ret;

 for (i = 0; i < ARRAY_SIZE(lcd->gamma); i++) {
  ret = snprintf(buf + len, PAGE_SIZE - len, "%u ",
          lcd->gamma[i]);
  if (ret < 0)
   return ret;
  len += ret;
 }
 buf[len - 1] = '\n';

 return len;
}
