
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_region {int dev; } ;


 int device_unregister (int *) ;

void fpga_region_unregister(struct fpga_region *region)
{
 device_unregister(&region->dev);
}
