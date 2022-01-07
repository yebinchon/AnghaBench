
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t bitset_size_in_bytes (unsigned int) ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static inline void clear_bitset(void *bitset, unsigned nr_entries)
{
 size_t s = bitset_size_in_bytes(nr_entries);
 memset(bitset, 0, s);
}
