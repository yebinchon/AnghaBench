
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_LONG ;
 int dm_div_up (unsigned int,int ) ;

__attribute__((used)) static inline size_t bitset_size_in_bytes(unsigned nr_entries)
{
 return sizeof(unsigned long) * dm_div_up(nr_entries, BITS_PER_LONG);
}
