
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int table; } ;


 int dm_suspended_md (int ) ;
 int dm_table_get_md (int ) ;

int dm_suspended(struct dm_target *ti)
{
 return dm_suspended_md(dm_table_get_md(ti->table));
}
