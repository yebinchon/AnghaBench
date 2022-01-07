
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline u64 reverse(u64 data, int bits)
{
 int i;
 u64 c;

 c = 0;
 for (i = 0; i < bits; i++) {
  c |= (u64) (((data & (((u64) 1) << i)) ? 1 : 0))
   << (bits - 1 - i);
 }
 return (c);
}
