
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;



__attribute__((used)) static long clk_tve_di_round_rate(struct clk_hw *hw, unsigned long rate,
      unsigned long *prate)
{
 unsigned long div;

 div = *prate / rate;
 if (div >= 4)
  return *prate / 4;
 else if (div >= 2)
  return *prate / 2;
 return *prate;
}
