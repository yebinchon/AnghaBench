
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpga_region {int dummy; } ;
struct dfl_fme_region {TYPE_1__* region; } ;
struct dfl_fme {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 struct dfl_fme_region* dfl_fme_region_find_by_port_id (struct dfl_fme*,int) ;
 int dfl_fme_region_match ;
 struct fpga_region* fpga_region_class_find (int *,int *,int ) ;

__attribute__((used)) static struct fpga_region *dfl_fme_region_find(struct dfl_fme *fme, int port_id)
{
 struct dfl_fme_region *fme_region;
 struct fpga_region *region;

 fme_region = dfl_fme_region_find_by_port_id(fme, port_id);
 if (!fme_region)
  return ((void*)0);

 region = fpga_region_class_find(((void*)0), &fme_region->region->dev,
     dfl_fme_region_match);
 if (!region)
  return ((void*)0);

 return region;
}
