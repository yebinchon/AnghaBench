
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int MAX31856_FAULT_OPEN ;
 int show_fault (struct device*,int ,char*) ;

__attribute__((used)) static ssize_t show_fault_oc(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 return show_fault(dev, MAX31856_FAULT_OPEN, buf);
}
