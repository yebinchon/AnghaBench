
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_region {int dev; } ;


 int device_add (int *) ;

int fpga_region_register(struct fpga_region *region)
{
 return device_add(&region->dev);
}
