
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct xadc {int dummy; } ;




 int XADC_CONF2_PD_ADC_B ;
 int XADC_CONF2_PD_MASK ;
 int XADC_REG_CONF2 ;
 int xadc_update_adc_reg (struct xadc*,int ,int ,int ) ;

__attribute__((used)) static int xadc_power_adc_b(struct xadc *xadc, unsigned int seq_mode)
{
 uint16_t val;

 switch (seq_mode) {
 case 128:
 case 129:
  val = XADC_CONF2_PD_ADC_B;
  break;
 default:
  val = 0;
  break;
 }

 return xadc_update_adc_reg(xadc, XADC_REG_CONF2, XADC_CONF2_PD_MASK,
  val);
}
