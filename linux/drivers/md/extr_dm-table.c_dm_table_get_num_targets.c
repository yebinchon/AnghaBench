
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {unsigned int num_targets; } ;



unsigned int dm_table_get_num_targets(struct dm_table *t)
{
 return t->num_targets;
}
