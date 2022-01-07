
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 egress_cycles(u32 len, u32 rate)
{
 u32 cycles;
 cycles = len * 8;
 cycles *= 805;
 cycles /= rate;

 return cycles;
}
