
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LCD_LINE2_OFFSET ;
 int LCD_LINE2_SIZE ;
 int store_line (struct device*,char const*,size_t,int ,int ) ;

__attribute__((used)) static ssize_t store_line2(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 return store_line(dev, buf, count, LCD_LINE2_OFFSET, LCD_LINE2_SIZE);
}
