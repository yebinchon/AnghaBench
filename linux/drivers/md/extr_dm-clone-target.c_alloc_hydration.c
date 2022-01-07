
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_region_hydration {struct clone* clone; } ;
struct clone {int hydration_pool; } ;


 int GFP_NOIO ;
 struct dm_clone_region_hydration* mempool_alloc (int *,int ) ;

__attribute__((used)) static struct dm_clone_region_hydration *alloc_hydration(struct clone *clone)
{
 struct dm_clone_region_hydration *hd;





 hd = mempool_alloc(&clone->hydration_pool, GFP_NOIO);
 hd->clone = clone;

 return hd;
}
