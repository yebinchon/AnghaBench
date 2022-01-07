
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct fpga_region {TYPE_1__ dev; } ;


 int fpga_region_ida ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct fpga_region*) ;

void fpga_region_free(struct fpga_region *region)
{
 ida_simple_remove(&fpga_region_ida, region->dev.id);
 kfree(region);
}
