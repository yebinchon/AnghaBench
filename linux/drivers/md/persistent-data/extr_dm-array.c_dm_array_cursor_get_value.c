
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_array_cursor {int index; int ab; int info; } ;


 void* element_at (int ,int ,int ) ;

void dm_array_cursor_get_value(struct dm_array_cursor *c, void **value_le)
{
 *value_le = element_at(c->info, c->ab, c->index);
}
