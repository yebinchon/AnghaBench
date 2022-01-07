
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w6692_hw {int imask; int lock; int name; int irqcnt; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ReadW6692 (struct w6692_hw*,int ) ;
 int W6692B_interrupt (struct w6692_hw*,int) ;
 int W6692_empty_Dfifo (struct w6692_hw*,int ) ;
 int W_D_FIFO_THRESH ;
 int W_INT_B1_EXI ;
 int W_INT_B2_EXI ;
 int W_INT_D_EXI ;
 int W_INT_D_RME ;
 int W_INT_D_RMR ;
 int W_INT_D_XFR ;
 int W_INT_XINT0 ;
 int W_INT_XINT1 ;
 int W_ISTA ;
 int handle_rxD (struct w6692_hw*) ;
 int handle_statusD (struct w6692_hw*) ;
 int handle_txD (struct w6692_hw*) ;
 int pr_debug (char*,int ,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t
w6692_irq(int intno, void *dev_id)
{
 struct w6692_hw *card = dev_id;
 u8 ista;

 spin_lock(&card->lock);
 ista = ReadW6692(card, W_ISTA);
 if ((ista | card->imask) == card->imask) {

  spin_unlock(&card->lock);
  return IRQ_NONE;
 }
 card->irqcnt++;
 pr_debug("%s: ista %02x\n", card->name, ista);
 ista &= ~card->imask;
 if (ista & W_INT_B1_EXI)
  W6692B_interrupt(card, 0);
 if (ista & W_INT_B2_EXI)
  W6692B_interrupt(card, 1);
 if (ista & W_INT_D_RME)
  handle_rxD(card);
 if (ista & W_INT_D_RMR)
  W6692_empty_Dfifo(card, W_D_FIFO_THRESH);
 if (ista & W_INT_D_XFR)
  handle_txD(card);
 if (ista & W_INT_D_EXI)
  handle_statusD(card);
 if (ista & (W_INT_XINT0 | W_INT_XINT1))
  pr_debug("%s: W6692 spurious XINT!\n", card->name);

 spin_unlock(&card->lock);
 return IRQ_HANDLED;
}
