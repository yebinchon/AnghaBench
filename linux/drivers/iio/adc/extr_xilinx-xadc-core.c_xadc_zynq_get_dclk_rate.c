
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xadc {int clk; } ;





 int XADC_ZYNQ_CFG_TCKRATE_MASK ;
 int XADC_ZYNQ_REG_CFG ;
 unsigned int clk_get_rate (int ) ;
 int xadc_read_reg (struct xadc*,int ,int*) ;

__attribute__((used)) static unsigned long xadc_zynq_get_dclk_rate(struct xadc *xadc)
{
 unsigned int div;
 uint32_t val;

 xadc_read_reg(xadc, XADC_ZYNQ_REG_CFG, &val);

 switch (val & XADC_ZYNQ_CFG_TCKRATE_MASK) {
 case 129:
  div = 4;
  break;
 case 128:
  div = 8;
  break;
 case 130:
  div = 16;
  break;
 default:
  div = 2;
  break;
 }

 return clk_get_rate(xadc->clk) / div;
}
