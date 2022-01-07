
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct xadc {int dummy; } ;


 scalar_t__ XADC_AXI_ADC_REG_OFFSET ;
 int xadc_write_reg (struct xadc*,scalar_t__,int ) ;

__attribute__((used)) static int xadc_axi_write_adc_reg(struct xadc *xadc, unsigned int reg,
 uint16_t val)
{
 xadc_write_reg(xadc, XADC_AXI_ADC_REG_OFFSET + reg * 4, val);

 return 0;
}
