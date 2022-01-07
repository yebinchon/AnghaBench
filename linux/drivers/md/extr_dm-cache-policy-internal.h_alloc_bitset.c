
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t bitset_size_in_bytes (unsigned int) ;
 unsigned long* vzalloc (size_t) ;

__attribute__((used)) static inline unsigned long *alloc_bitset(unsigned nr_entries)
{
 size_t s = bitset_size_in_bytes(nr_entries);
 return vzalloc(s);
}
