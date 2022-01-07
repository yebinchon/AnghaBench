
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct atk_sensor_data {char* acpi_name; } ;
typedef int ssize_t ;


 struct atk_sensor_data* label_to_atk_sensor (struct device_attribute*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t atk_label_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct atk_sensor_data *s = label_to_atk_sensor(attr);

 return sprintf(buf, "%s\n", s->acpi_name);
}
