
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dax_region {TYPE_1__* dev; } ;
struct TYPE_2__ {int kobj; } ;


 int dax_region_attribute_groups ;
 int dax_region_put (struct dax_region*) ;
 int sysfs_remove_groups (int *,int ) ;

__attribute__((used)) static void dax_region_unregister(void *region)
{
 struct dax_region *dax_region = region;

 sysfs_remove_groups(&dax_region->dev->kobj,
   dax_region_attribute_groups);
 dax_region_put(dax_region);
}
