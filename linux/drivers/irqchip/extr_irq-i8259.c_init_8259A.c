
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_mask_ack; } ;


 int I8259A_IRQ_BASE ;
 unsigned int MASTER_ICW4_DEFAULT ;
 unsigned int PIC_CASCADE_IR ;
 unsigned int PIC_ICW4_AEOI ;
 int PIC_MASTER_CMD ;
 int PIC_MASTER_IMR ;
 int PIC_SLAVE_CMD ;
 int PIC_SLAVE_IMR ;
 unsigned int SLAVE_ICW4_DEFAULT ;
 int cached_master_mask ;
 int cached_slave_mask ;
 int disable_8259A_irq ;
 int i8259A_auto_eoi ;
 TYPE_1__ i8259A_chip ;
 int i8259A_lock ;
 int mask_and_ack_8259A ;
 int outb (int,int ) ;
 int outb_p (unsigned int,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void init_8259A(int auto_eoi)
{
 unsigned long flags;

 i8259A_auto_eoi = auto_eoi;

 raw_spin_lock_irqsave(&i8259A_lock, flags);

 outb(0xff, PIC_MASTER_IMR);
 outb(0xff, PIC_SLAVE_IMR);




 outb_p(0x11, PIC_MASTER_CMD);
 outb_p(I8259A_IRQ_BASE + 0, PIC_MASTER_IMR);
 outb_p(1U << PIC_CASCADE_IR, PIC_MASTER_IMR);
 if (auto_eoi)
  outb_p(MASTER_ICW4_DEFAULT | PIC_ICW4_AEOI, PIC_MASTER_IMR);
 else
  outb_p(MASTER_ICW4_DEFAULT, PIC_MASTER_IMR);

 outb_p(0x11, PIC_SLAVE_CMD);
 outb_p(I8259A_IRQ_BASE + 8, PIC_SLAVE_IMR);
 outb_p(PIC_CASCADE_IR, PIC_SLAVE_IMR);
 outb_p(SLAVE_ICW4_DEFAULT, PIC_SLAVE_IMR);
 if (auto_eoi)




  i8259A_chip.irq_mask_ack = disable_8259A_irq;
 else
  i8259A_chip.irq_mask_ack = mask_and_ack_8259A;

 udelay(100);

 outb(cached_master_mask, PIC_MASTER_IMR);
 outb(cached_slave_mask, PIC_SLAVE_IMR);

 raw_spin_unlock_irqrestore(&i8259A_lock, flags);
}
