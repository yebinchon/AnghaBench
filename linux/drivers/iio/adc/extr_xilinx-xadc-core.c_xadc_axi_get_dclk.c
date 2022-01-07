
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xadc {int clk; } ;


 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long xadc_axi_get_dclk(struct xadc *xadc)
{
 return clk_get_rate(xadc->clk);
}
