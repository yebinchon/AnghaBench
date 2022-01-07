
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_id_table {int table; } ;


 int kfree (int ) ;

void c4iw_id_table_free(struct c4iw_id_table *alloc)
{
 kfree(alloc->table);
}
