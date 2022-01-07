
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_5__ {int dev; } ;
struct TYPE_8__ {TYPE_1__ dch; int (* release ) (TYPE_4__*) ;} ;
struct TYPE_6__ {TYPE_4__ isac; } ;
struct inf_hw {int pdev; struct inf_hw** sc; TYPE_3__* ci; int list; TYPE_2__ ipac; int irq; int lock; } ;
struct TYPE_7__ {int typ; } ;






 int card_lock ;
 int disable_hwirq (struct inf_hw*) ;
 int free_irq (int ,struct inf_hw*) ;
 int inf_cnt ;
 int kfree (struct inf_hw*) ;
 int list_del (int *) ;
 int mISDN_unregister_device (int *) ;
 int pci_disable_device (int ) ;
 int pci_set_drvdata (int ,int *) ;
 int release_io (struct inf_hw*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (TYPE_4__*) ;
 int write_lock_irqsave (int *,int ) ;
 int write_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void
release_card(struct inf_hw *card) {
 ulong flags;
 int i;

 spin_lock_irqsave(&card->lock, flags);
 disable_hwirq(card);
 spin_unlock_irqrestore(&card->lock, flags);
 card->ipac.isac.release(&card->ipac.isac);
 free_irq(card->irq, card);
 mISDN_unregister_device(&card->ipac.isac.dch.dev);
 release_io(card);
 write_lock_irqsave(&card_lock, flags);
 list_del(&card->list);
 write_unlock_irqrestore(&card_lock, flags);
 switch (card->ci->typ) {
 case 130:
 case 129:
 case 128:
  break;
 case 131:
  for (i = 0; i < 3; i++) {
   if (card->sc[i])
    release_card(card->sc[i]);
   card->sc[i] = ((void*)0);
  }

 default:
  pci_disable_device(card->pdev);
  pci_set_drvdata(card->pdev, ((void*)0));
  break;
 }
 kfree(card);
 inf_cnt--;
}
