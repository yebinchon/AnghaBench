
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_3__ {scalar_t__ input; } ;
struct dm_cache_migration {int cell; TYPE_2__* cache; TYPE_1__ k; } ;
struct TYPE_4__ {int prison; } ;


 int READ_WRITE_LOCK_LEVEL ;
 int dm_cell_lock_promote_v2 (int ,int ,int ) ;
 int mg_complete (struct dm_cache_migration*,int) ;
 int mg_update_metadata (struct work_struct*) ;
 int quiesce (struct dm_cache_migration*,int (*) (struct work_struct*)) ;
 struct dm_cache_migration* ws_to_mg (struct work_struct*) ;

__attribute__((used)) static void mg_upgrade_lock(struct work_struct *ws)
{
 int r;
 struct dm_cache_migration *mg = ws_to_mg(ws);




 if (mg->k.input)
  mg_complete(mg, 0);

 else {



  r = dm_cell_lock_promote_v2(mg->cache->prison, mg->cell,
         READ_WRITE_LOCK_LEVEL);
  if (r < 0)
   mg_complete(mg, 0);

  else if (r)
   quiesce(mg, mg_update_metadata);

  else
   mg_update_metadata(ws);
 }
}
