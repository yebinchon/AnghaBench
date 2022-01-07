
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct device {int dummy; } ;


 int device_property_read_u32 (struct device*,char const*,unsigned int*) ;

__attribute__((used)) static bool touchscreen_get_prop_u32(struct device *dev,
         const char *property,
         unsigned int default_value,
         unsigned int *value)
{
 u32 val;
 int error;

 error = device_property_read_u32(dev, property, &val);
 if (error) {
  *value = default_value;
  return 0;
 }

 *value = val;
 return 1;
}
