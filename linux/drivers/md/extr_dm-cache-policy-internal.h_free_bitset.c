
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vfree (unsigned long*) ;

__attribute__((used)) static inline void free_bitset(unsigned long *bits)
{
 vfree(bits);
}
