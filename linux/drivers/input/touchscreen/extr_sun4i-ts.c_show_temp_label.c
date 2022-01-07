
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t show_temp_label(struct device *dev,
         struct device_attribute *devattr, char *buf)
{
 return sprintf(buf, "SoC temperature\n");
}
