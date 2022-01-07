
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xadc {unsigned int zynq_intmask; int zynq_masked_alarm; } ;


 int XADC_ZYNQ_REG_INTMSK ;
 int xadc_write_reg (struct xadc*,int ,int) ;

__attribute__((used)) static void xadc_zynq_update_intmsk(struct xadc *xadc, unsigned int mask,
 unsigned int val)
{
 xadc->zynq_intmask &= ~mask;
 xadc->zynq_intmask |= val;

 xadc_write_reg(xadc, XADC_ZYNQ_REG_INTMSK,
  xadc->zynq_intmask | xadc->zynq_masked_alarm);
}
