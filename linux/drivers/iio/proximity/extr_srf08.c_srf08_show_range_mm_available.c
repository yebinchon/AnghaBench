
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t srf08_show_range_mm_available(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "[0.043 0.043 11.008]\n");
}
