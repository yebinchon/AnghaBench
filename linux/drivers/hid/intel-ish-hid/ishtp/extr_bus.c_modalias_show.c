
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 char* dev_name (struct device*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev, struct device_attribute *a,
 char *buf)
{
 int len;

 len = snprintf(buf, PAGE_SIZE, "ishtp:%s\n", dev_name(dev));
 return (len >= PAGE_SIZE) ? (PAGE_SIZE - 1) : len;
}
