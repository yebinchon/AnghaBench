
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dm_bitset_cursor {int bit_index; scalar_t__ entries_remaining; scalar_t__ array_index; int current_bits; int cursor; } ;
typedef int __le64 ;


 int ENODATA ;
 int dm_array_cursor_get_value (int *,void**) ;
 int dm_array_cursor_skip (int *,scalar_t__) ;
 int le64_to_cpu (int ) ;

int dm_bitset_cursor_skip(struct dm_bitset_cursor *c, uint32_t count)
{
 int r;
 __le64 *value;
 uint32_t nr_array_skip;
 uint32_t remaining_in_word = 64 - c->bit_index;

 if (c->entries_remaining < count)
  return -ENODATA;

 if (count < remaining_in_word) {
  c->bit_index += count;
  c->entries_remaining -= count;
  return 0;

 } else {
  c->entries_remaining -= remaining_in_word;
  count -= remaining_in_word;
 }

 nr_array_skip = (count / 64) + 1;
 r = dm_array_cursor_skip(&c->cursor, nr_array_skip);
 if (r)
  return r;

 dm_array_cursor_get_value(&c->cursor, (void **) &value);
 c->entries_remaining -= count;
 c->array_index += nr_array_skip;
 c->bit_index = count & 63;
 c->current_bits = le64_to_cpu(*value);

 return 0;
}
