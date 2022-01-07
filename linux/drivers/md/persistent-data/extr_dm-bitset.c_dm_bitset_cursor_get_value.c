
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bitset_cursor {int current_bits; int bit_index; } ;


 int test_bit (int ,unsigned long*) ;

bool dm_bitset_cursor_get_value(struct dm_bitset_cursor *c)
{
 return test_bit(c->bit_index, (unsigned long *) &c->current_bits);
}
