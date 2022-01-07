
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct dm_table {struct mapped_device* md; } ;



struct mapped_device *dm_table_get_md(struct dm_table *t)
{
 return t->md;
}
