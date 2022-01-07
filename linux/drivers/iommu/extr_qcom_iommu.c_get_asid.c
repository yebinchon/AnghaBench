
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int ENODEV ;
 scalar_t__ of_property_read_u32_index (struct device_node const*,char*,int ,int*) ;

__attribute__((used)) static int get_asid(const struct device_node *np)
{
 u32 reg;




 if (of_property_read_u32_index(np, "reg", 0, &reg))
  return -ENODEV;

 return reg / 0x1000;
}
