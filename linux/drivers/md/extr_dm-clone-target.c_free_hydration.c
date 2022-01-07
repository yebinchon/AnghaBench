
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_clone_region_hydration {TYPE_1__* clone; } ;
struct TYPE_2__ {int hydration_pool; } ;


 int mempool_free (struct dm_clone_region_hydration*,int *) ;

__attribute__((used)) static inline void free_hydration(struct dm_clone_region_hydration *hd)
{
 mempool_free(hd, &hd->clone->hydration_pool);
}
