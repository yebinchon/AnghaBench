
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int of_device_modalias (struct device*,char*,int ) ;

__attribute__((used)) static ssize_t modalias_show (struct device *dev, struct device_attribute *attr,
         char *buf)
{
 return of_device_modalias(dev, buf, PAGE_SIZE);
}
