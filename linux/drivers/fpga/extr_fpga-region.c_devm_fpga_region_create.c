
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_region {int dummy; } ;
struct fpga_manager {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int devm_fpga_region_release ;
 int devres_add (struct device*,struct fpga_region**) ;
 struct fpga_region** devres_alloc (int ,int,int ) ;
 int devres_free (struct fpga_region**) ;
 struct fpga_region* fpga_region_create (struct device*,struct fpga_manager*,int (*) (struct fpga_region*)) ;

struct fpga_region
*devm_fpga_region_create(struct device *dev,
    struct fpga_manager *mgr,
    int (*get_bridges)(struct fpga_region *))
{
 struct fpga_region **ptr, *region;

 ptr = devres_alloc(devm_fpga_region_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ((void*)0);

 region = fpga_region_create(dev, mgr, get_bridges);
 if (!region) {
  devres_free(ptr);
 } else {
  *ptr = region;
  devres_add(dev, ptr);
 }

 return region;
}
