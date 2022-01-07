
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static bool pll_is_locked(u32 stat)
{
 return ((stat & 0x6f) == 0x3);
}
