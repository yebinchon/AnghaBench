
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int fwnode; } ;


 int SZ_1M ;
 scalar_t__ fwnode_property_read_u32 (int ,char*,int *) ;

__attribute__((used)) static u32 tmc_etr_get_default_buffer_size(struct device *dev)
{
 u32 size;

 if (fwnode_property_read_u32(dev->fwnode, "arm,buffer-size", &size))
  size = SZ_1M;
 return size;
}
