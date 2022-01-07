
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {int dev; int l1; } ;
struct w6692_hw {int fmask; scalar_t__ subtype; int xdata; int pdev; int list; TYPE_2__ dch; TYPE_1__* bc; int addr; int irq; int lock; } ;
struct TYPE_3__ {int bch; } ;


 int CLOSE_CHANNEL ;
 int ISDN_P_NONE ;
 scalar_t__ W6692_USR ;
 int W_XDATA ;
 int WriteW6692 (struct w6692_hw*,int ,int) ;
 int card_lock ;
 int disable_hwirq (struct w6692_hw*) ;
 int free_irq (int ,struct w6692_hw*) ;
 int kfree (struct w6692_hw*) ;
 int l1_event (int ,int ) ;
 int led ;
 int list_del (int *) ;
 int mISDN_freebchannel (int *) ;
 int mISDN_freedchannel (TYPE_2__*) ;
 int mISDN_unregister_device (int *) ;
 int pci_disable_device (int ) ;
 int pci_set_drvdata (int ,int *) ;
 int release_region (int ,int) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int w6692_mode (TYPE_1__*,int ) ;
 int write_lock_irqsave (int *,int ) ;
 int write_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void
release_card(struct w6692_hw *card)
{
 u_long flags;

 spin_lock_irqsave(&card->lock, flags);
 disable_hwirq(card);
 w6692_mode(&card->bc[0], ISDN_P_NONE);
 w6692_mode(&card->bc[1], ISDN_P_NONE);
 if ((card->fmask & led) || card->subtype == W6692_USR) {
  card->xdata |= 0x04;
  WriteW6692(card, W_XDATA, card->xdata);
 }
 spin_unlock_irqrestore(&card->lock, flags);
 free_irq(card->irq, card);
 l1_event(card->dch.l1, CLOSE_CHANNEL);
 mISDN_unregister_device(&card->dch.dev);
 release_region(card->addr, 256);
 mISDN_freebchannel(&card->bc[1].bch);
 mISDN_freebchannel(&card->bc[0].bch);
 mISDN_freedchannel(&card->dch);
 write_lock_irqsave(&card_lock, flags);
 list_del(&card->list);
 write_unlock_irqrestore(&card_lock, flags);
 pci_disable_device(card->pdev);
 pci_set_drvdata(card->pdev, ((void*)0));
 kfree(card);
}
