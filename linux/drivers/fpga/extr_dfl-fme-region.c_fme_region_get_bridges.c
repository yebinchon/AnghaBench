
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpga_region {int bridge_list; int info; struct dfl_fme_region_pdata* priv; } ;
struct dfl_fme_region_pdata {TYPE_1__* br; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int fpga_bridge_get_to_list (struct device*,int ,int *) ;

__attribute__((used)) static int fme_region_get_bridges(struct fpga_region *region)
{
 struct dfl_fme_region_pdata *pdata = region->priv;
 struct device *dev = &pdata->br->dev;

 return fpga_bridge_get_to_list(dev, region->info, &region->bridge_list);
}
