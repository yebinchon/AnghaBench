
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gscps2port {int addr; int lock; } ;


 int GSC_CTRL_ENBL ;
 int gscps2_flush (struct gscps2port*) ;
 int gscps2_readb_control (int ) ;
 int gscps2_writeb_control (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_TBE (int ) ;

__attribute__((used)) static void gscps2_enable(struct gscps2port *ps2port, int enable)
{
 unsigned long flags;
 u8 data;


 spin_lock_irqsave(&ps2port->lock, flags);
 gscps2_flush(ps2port);
 data = gscps2_readb_control(ps2port->addr);
 if (enable)
  data |= GSC_CTRL_ENBL;
 else
  data &= ~GSC_CTRL_ENBL;
 gscps2_writeb_control(data, ps2port->addr);
 spin_unlock_irqrestore(&ps2port->lock, flags);
 wait_TBE(ps2port->addr);
 gscps2_flush(ps2port);
}
