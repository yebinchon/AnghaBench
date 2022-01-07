
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct xadc {int lock; } ;


 unsigned int XADC_ZYNQ_INT_ALARM_MASK ;
 int XADC_ZYNQ_REG_INTSTS ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xadc_read_reg (struct xadc*,int ,unsigned int*) ;
 int xadc_write_reg (struct xadc*,int ,unsigned int) ;
 int xadc_zynq_update_intmsk (struct xadc*,unsigned int,unsigned int) ;

__attribute__((used)) static void xadc_zynq_update_alarm(struct xadc *xadc, unsigned int alarm)
{
 unsigned long flags;
 uint32_t status;


 alarm = ((alarm & 0x08) << 4) | ((alarm & 0xf0) >> 1) | (alarm & 0x07);

 spin_lock_irqsave(&xadc->lock, flags);


 xadc_read_reg(xadc, XADC_ZYNQ_REG_INTSTS, &status);
 xadc_write_reg(xadc, XADC_ZYNQ_REG_INTSTS, status & alarm);

 xadc_zynq_update_intmsk(xadc, XADC_ZYNQ_INT_ALARM_MASK,
  ~alarm & XADC_ZYNQ_INT_ALARM_MASK);

 spin_unlock_irqrestore(&xadc->lock, flags);
}
