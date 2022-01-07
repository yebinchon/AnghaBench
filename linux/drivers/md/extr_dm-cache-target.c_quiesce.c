
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ws; } ;
struct dm_cache_migration {TYPE_2__ k; int cell; TYPE_1__* cache; } ;
struct TYPE_3__ {int prison; } ;


 int dm_cell_quiesce_v2 (int ,int ,int *) ;
 int init_continuation (TYPE_2__*,void (*) (struct work_struct*)) ;

__attribute__((used)) static void quiesce(struct dm_cache_migration *mg,
      void (*continuation)(struct work_struct *))
{
 init_continuation(&mg->k, continuation);
 dm_cell_quiesce_v2(mg->cache->prison, mg->cell, &mg->k.ws);
}
