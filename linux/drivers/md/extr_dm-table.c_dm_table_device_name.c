
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int md; } ;


 char const* dm_device_name (int ) ;

const char *dm_table_device_name(struct dm_table *t)
{
 return dm_device_name(t->md);
}
