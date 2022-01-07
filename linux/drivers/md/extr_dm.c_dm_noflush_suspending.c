
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int table; } ;


 int __noflush_suspending (int ) ;
 int dm_table_get_md (int ) ;

int dm_noflush_suspending(struct dm_target *ti)
{
 return __noflush_suspending(dm_table_get_md(ti->table));
}
