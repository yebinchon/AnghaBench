
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dax_region {int kref; } ;


 int dax_region_free ;
 int kref_put (int *,int ) ;

void dax_region_put(struct dax_region *dax_region)
{
 kref_put(&dax_region->kref, dax_region_free);
}
