
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct ps2if* port_data; } ;
struct ps2if {int head; int tail; unsigned char* buf; int lock; int tx_irq; scalar_t__ base; } ;


 scalar_t__ PS2DATA ;
 scalar_t__ PS2STAT ;
 int PS2STAT_TXE ;
 int enable_irq (int ) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel_relaxed (unsigned char,scalar_t__) ;

__attribute__((used)) static int ps2_write(struct serio *io, unsigned char val)
{
 struct ps2if *ps2if = io->port_data;
 unsigned long flags;
 unsigned int head;

 spin_lock_irqsave(&ps2if->lock, flags);




 if (readl_relaxed(ps2if->base + PS2STAT) & PS2STAT_TXE) {
  writel_relaxed(val, ps2if->base + PS2DATA);
 } else {
  if (ps2if->head == ps2if->tail)
   enable_irq(ps2if->tx_irq);
  head = (ps2if->head + 1) & (sizeof(ps2if->buf) - 1);
  if (head != ps2if->tail) {
   ps2if->buf[ps2if->head] = val;
   ps2if->head = head;
  }
 }

 spin_unlock_irqrestore(&ps2if->lock, flags);
 return 0;
}
