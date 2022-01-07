
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv40_clk {int dummy; } ;


 int read_pll_1 (struct nv40_clk*,int) ;
 int read_pll_2 (struct nv40_clk*,int) ;

__attribute__((used)) static u32
read_clk(struct nv40_clk *clk, u32 src)
{
 switch (src) {
 case 3:
  return read_pll_2(clk, 0x004000);
 case 2:
  return read_pll_1(clk, 0x004008);
 default:
  break;
 }

 return 0;
}
