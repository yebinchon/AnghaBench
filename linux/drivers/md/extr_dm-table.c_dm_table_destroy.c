
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {TYPE_1__* type; } ;
struct dm_table {int depth; unsigned int num_targets; int mempools; int md; int devices; int highs; struct dm_target* targets; int * index; } ;
struct TYPE_2__ {int (* dtr ) (struct dm_target*) ;} ;


 int dm_free_md_mempools (int ) ;
 int dm_put_target_type (TYPE_1__*) ;
 int free_devices (int *,int ) ;
 int kfree (struct dm_table*) ;
 int stub1 (struct dm_target*) ;
 int vfree (int ) ;

void dm_table_destroy(struct dm_table *t)
{
 unsigned int i;

 if (!t)
  return;


 if (t->depth >= 2)
  vfree(t->index[t->depth - 2]);


 for (i = 0; i < t->num_targets; i++) {
  struct dm_target *tgt = t->targets + i;

  if (tgt->type->dtr)
   tgt->type->dtr(tgt);

  dm_put_target_type(tgt->type);
 }

 vfree(t->highs);


 free_devices(&t->devices, t->md);

 dm_free_md_mempools(t->mempools);

 kfree(t);
}
