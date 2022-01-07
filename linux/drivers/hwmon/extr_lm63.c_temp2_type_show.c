
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm63_data {scalar_t__ trutherm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct lm63_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t temp2_type_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct lm63_data *data = dev_get_drvdata(dev);

 return sprintf(buf, data->trutherm ? "1\n" : "2\n");
}
