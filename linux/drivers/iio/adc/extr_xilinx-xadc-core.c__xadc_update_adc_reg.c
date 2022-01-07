
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct xadc {int dummy; } ;


 int _xadc_read_adc_reg (struct xadc*,unsigned int,int*) ;
 int _xadc_write_adc_reg (struct xadc*,unsigned int,int) ;

__attribute__((used)) static int _xadc_update_adc_reg(struct xadc *xadc, unsigned int reg,
 uint16_t mask, uint16_t val)
{
 uint16_t tmp;
 int ret;

 ret = _xadc_read_adc_reg(xadc, reg, &tmp);
 if (ret)
  return ret;

 return _xadc_write_adc_reg(xadc, reg, (tmp & ~mask) | val);
}
