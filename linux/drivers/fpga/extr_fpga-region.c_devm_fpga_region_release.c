
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_region {int dummy; } ;
struct device {int dummy; } ;


 int fpga_region_free (struct fpga_region*) ;

__attribute__((used)) static void devm_fpga_region_release(struct device *dev, void *res)
{
 struct fpga_region *region = *(struct fpga_region **)res;

 fpga_region_free(region);
}
