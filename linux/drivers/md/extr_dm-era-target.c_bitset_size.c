
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_LONG ;
 int dm_div_up (unsigned int,int ) ;

__attribute__((used)) static size_t bitset_size(unsigned nr_bits)
{
 return sizeof(unsigned long) * dm_div_up(nr_bits, BITS_PER_LONG);
}
