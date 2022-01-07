
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gk104_clk {int dummy; } ;


 int min (int,int) ;

__attribute__((used)) static u32
calc_div(struct gk104_clk *clk, int idx, u32 ref, u32 freq, u32 *ddiv)
{
 u32 div = min((ref * 2) / freq, (u32)65);
 if (div < 2)
  div = 2;

 *ddiv = div - 2;
 return (ref * 2) / div;
}
