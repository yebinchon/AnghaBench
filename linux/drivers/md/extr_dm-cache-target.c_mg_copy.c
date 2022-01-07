
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct dm_cache_migration {int cache; int * overwrite_bio; TYPE_1__* op; } ;
struct TYPE_2__ {int oblock; } ;


 int BUG_ON (int) ;
 int bio_detain_shared (int ,int ,int *) ;
 int inc_io_migrations (int ) ;
 int mg_full_copy (struct work_struct*) ;
 int mg_update_metadata_after_copy ;
 int optimisable_bio (int ,int *,int ) ;
 int overwrite (struct dm_cache_migration*,int ) ;
 struct dm_cache_migration* ws_to_mg (struct work_struct*) ;

__attribute__((used)) static void mg_copy(struct work_struct *ws)
{
 struct dm_cache_migration *mg = ws_to_mg(ws);

 if (mg->overwrite_bio) {





  if (!optimisable_bio(mg->cache, mg->overwrite_bio, mg->op->oblock)) {



   bool rb = bio_detain_shared(mg->cache, mg->op->oblock, mg->overwrite_bio);
   BUG_ON(rb);
   mg->overwrite_bio = ((void*)0);
   inc_io_migrations(mg->cache);
   mg_full_copy(ws);
   return;
  }
  overwrite(mg, mg_update_metadata_after_copy);

 } else
  mg_full_copy(ws);
}
