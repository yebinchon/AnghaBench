
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int mode; } ;
typedef int fmode_t ;



fmode_t dm_table_get_mode(struct dm_table *t)
{
 return t->mode;
}
