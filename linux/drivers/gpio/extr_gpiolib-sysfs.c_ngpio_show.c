
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int ngpio; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct gpio_chip* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ngpio_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 const struct gpio_chip *chip = dev_get_drvdata(dev);

 return sprintf(buf, "%u\n", chip->ngpio);
}
