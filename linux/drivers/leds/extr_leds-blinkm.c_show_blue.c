
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int BLUE ;
 int show_color_common (struct device*,char*,int ) ;

__attribute__((used)) static ssize_t show_blue(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 return show_color_common(dev, buf, BLUE);
}
