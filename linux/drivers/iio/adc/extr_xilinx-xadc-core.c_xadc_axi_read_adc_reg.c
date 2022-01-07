
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct xadc {int dummy; } ;


 scalar_t__ XADC_AXI_ADC_REG_OFFSET ;
 int xadc_read_reg (struct xadc*,scalar_t__,int*) ;

__attribute__((used)) static int xadc_axi_read_adc_reg(struct xadc *xadc, unsigned int reg,
 uint16_t *val)
{
 uint32_t val32;

 xadc_read_reg(xadc, XADC_AXI_ADC_REG_OFFSET + reg * 4, &val32);
 *val = val32 & 0xffff;

 return 0;
}
