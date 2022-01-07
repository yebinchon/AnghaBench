
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int type; } ;
struct dm_table {int num_targets; struct dm_target* targets; } ;


 int dm_target_is_immutable (int ) ;

struct dm_target *dm_table_get_immutable_target(struct dm_table *t)
{

 if (t->num_targets > 1 ||
     !dm_target_is_immutable(t->targets[0].type))
  return ((void*)0);

 return t->targets;
}
