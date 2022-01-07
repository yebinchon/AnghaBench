
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 i5100_dmir_rank(u32 a, u32 i)
{
 return a >> (4 * i) & ((1 << 2) - 1);
}
