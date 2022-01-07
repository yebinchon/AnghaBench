
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_target {TYPE_1__* type; } ;
struct dm_table {int num_targets; TYPE_2__* md; struct dm_target* targets; } ;
typedef enum suspend_mode { ____Placeholder_suspend_mode } suspend_mode ;
struct TYPE_4__ {int suspend_lock; } ;
struct TYPE_3__ {int (* postsuspend ) (struct dm_target*) ;int (* presuspend_undo ) (struct dm_target*) ;int (* presuspend ) (struct dm_target*) ;} ;





 int lockdep_assert_held (int *) ;
 int stub1 (struct dm_target*) ;
 int stub2 (struct dm_target*) ;
 int stub3 (struct dm_target*) ;

__attribute__((used)) static void suspend_targets(struct dm_table *t, enum suspend_mode mode)
{
 int i = t->num_targets;
 struct dm_target *ti = t->targets;

 lockdep_assert_held(&t->md->suspend_lock);

 while (i--) {
  switch (mode) {
  case 129:
   if (ti->type->presuspend)
    ti->type->presuspend(ti);
   break;
  case 128:
   if (ti->type->presuspend_undo)
    ti->type->presuspend_undo(ti);
   break;
  case 130:
   if (ti->type->postsuspend)
    ti->type->postsuspend(ti);
   break;
  }
  ti++;
 }
}
