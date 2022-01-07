
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiger_hw {scalar_t__ typ; int ctrlreg; int auxd; scalar_t__ base; scalar_t__ dmactrl; } ;


 scalar_t__ NETJET_S_TJ320 ;
 scalar_t__ NJ_AUXCTRL ;
 scalar_t__ NJ_AUXDATA ;
 scalar_t__ NJ_CTRL ;
 scalar_t__ NJ_IRQMASK1 ;
 int NJ_ISACIRQ ;
 int mdelay (int) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void
nj_reset(struct tiger_hw *card)
{
 outb(0xff, card->base + NJ_CTRL);
 mdelay(1);



 if (card->typ == NETJET_S_TJ320)
  card->ctrlreg = 0x40;
 else
  card->ctrlreg = 0x00;
 outb(card->ctrlreg, card->base + NJ_CTRL);
 mdelay(10);


 card->auxd = 0;
 card->dmactrl = 0;
 outb(~NJ_ISACIRQ, card->base + NJ_AUXCTRL);
 outb(NJ_ISACIRQ, card->base + NJ_IRQMASK1);
 outb(card->auxd, card->base + NJ_AUXDATA);
}
