
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct xadc {int lock; } ;


 unsigned int XADC_AXI_INT_ALARM_MASK ;
 int XADC_AXI_REG_IPIER ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xadc_read_reg (struct xadc*,int ,unsigned int*) ;
 int xadc_write_reg (struct xadc*,int ,unsigned int) ;

__attribute__((used)) static void xadc_axi_update_alarm(struct xadc *xadc, unsigned int alarm)
{
 uint32_t val;
 unsigned long flags;







 alarm = ((alarm & 0x07) << 1) | ((alarm & 0x08) >> 3) |
   ((alarm & 0xf0) << 6);

 spin_lock_irqsave(&xadc->lock, flags);
 xadc_read_reg(xadc, XADC_AXI_REG_IPIER, &val);
 val &= ~XADC_AXI_INT_ALARM_MASK;
 val |= alarm;
 xadc_write_reg(xadc, XADC_AXI_REG_IPIER, val);
 spin_unlock_irqrestore(&xadc->lock, flags);
}
