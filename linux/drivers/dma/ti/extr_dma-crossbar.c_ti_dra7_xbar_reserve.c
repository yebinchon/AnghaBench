
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_bit (int,unsigned long*) ;

__attribute__((used)) static inline void ti_dra7_xbar_reserve(int offset, int len, unsigned long *p)
{
 for (; len > 0; len--)
  set_bit(offset + (len - 1), p);
}
