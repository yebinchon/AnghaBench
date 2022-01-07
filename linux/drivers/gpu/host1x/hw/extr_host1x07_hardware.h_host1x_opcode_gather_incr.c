
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int) ;

__attribute__((used)) static inline u32 host1x_opcode_gather_incr(unsigned offset, unsigned count)
{
 return (6 << 28) | (offset << 16) | BIT(15) | BIT(14) | count;
}
