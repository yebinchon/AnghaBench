
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2if {size_t head; size_t tail; int lock; scalar_t__ base; int * buf; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ PS2DATA ;
 scalar_t__ PS2STAT ;
 unsigned int PS2STAT_TXE ;
 int disable_irq_nosync (int) ;
 unsigned int readl_relaxed (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t ps2_txint(int irq, void *dev_id)
{
 struct ps2if *ps2if = dev_id;
 unsigned int status;

 spin_lock(&ps2if->lock);
 status = readl_relaxed(ps2if->base + PS2STAT);
 if (ps2if->head == ps2if->tail) {
  disable_irq_nosync(irq);

 } else if (status & PS2STAT_TXE) {
  writel_relaxed(ps2if->buf[ps2if->tail], ps2if->base + PS2DATA);
  ps2if->tail = (ps2if->tail + 1) & (sizeof(ps2if->buf) - 1);
 }
 spin_unlock(&ps2if->lock);

 return IRQ_HANDLED;
}
