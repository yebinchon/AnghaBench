
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gscps2port {int lock; scalar_t__ addr; } ;


 scalar_t__ GSC_RESET ;
 int gscps2_flush (struct gscps2port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void gscps2_reset(struct gscps2port *ps2port)
{
 unsigned long flags;


 spin_lock_irqsave(&ps2port->lock, flags);
 gscps2_flush(ps2port);
 writeb(0xff, ps2port->addr + GSC_RESET);
 gscps2_flush(ps2port);
 spin_unlock_irqrestore(&ps2port->lock, flags);
}
