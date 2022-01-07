
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int type; } ;
struct dm_table {int dummy; } ;


 unsigned int dm_table_get_num_targets (struct dm_table*) ;
 struct dm_target* dm_table_get_target (struct dm_table*,unsigned int) ;
 scalar_t__ dm_target_is_wildcard (int ) ;

struct dm_target *dm_table_get_wildcard_target(struct dm_table *t)
{
 struct dm_target *ti;
 unsigned i;

 for (i = 0; i < dm_table_get_num_targets(t); i++) {
  ti = dm_table_get_target(t, i);
  if (dm_target_is_wildcard(ti->type))
   return ti;
 }

 return ((void*)0);
}
