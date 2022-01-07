
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int dummy; } ;


 int PRESUSPEND_UNDO ;
 int suspend_targets (struct dm_table*,int ) ;

void dm_table_presuspend_undo_targets(struct dm_table *t)
{
 if (!t)
  return;

 suspend_targets(t, PRESUSPEND_UNDO);
}
