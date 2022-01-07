
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bitset_cursor {int current_bits; scalar_t__ bit_index; int array_index; int cursor; } ;
typedef int __le64 ;


 int dm_array_cursor_get_value (int *,void**) ;
 int dm_array_cursor_next (int *) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static int cursor_next_array_entry(struct dm_bitset_cursor *c)
{
 int r;
 __le64 *value;

 r = dm_array_cursor_next(&c->cursor);
 if (r)
  return r;

 dm_array_cursor_get_value(&c->cursor, (void **) &value);
 c->array_index++;
 c->bit_index = 0;
 c->current_bits = le64_to_cpu(*value);
 return 0;
}
