
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 rv6xx_clocks_per_unit(u32 unit)
{
 u32 tmp = 1 << (2 * unit);

 return tmp;
}
