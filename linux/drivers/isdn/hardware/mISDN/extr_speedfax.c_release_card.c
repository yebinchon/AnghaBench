
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {int dev; } ;
struct TYPE_6__ {TYPE_1__ dch; int (* release ) (TYPE_3__*) ;} ;
struct TYPE_5__ {int (* release ) (TYPE_2__*) ;} ;
struct sfax_hw {int list; int pdev; int cfg; TYPE_3__ isac; TYPE_2__ isar; int irq; int lock; } ;


 int card_lock ;
 int disable_hwirq (struct sfax_hw*) ;
 int free_irq (int ,struct sfax_hw*) ;
 int kfree (struct sfax_hw*) ;
 int list_del (int *) ;
 int mISDN_unregister_device (int *) ;
 int pci_disable_device (int ) ;
 int pci_set_drvdata (int ,int *) ;
 int release_region (int ,int) ;
 int sfax_cnt ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_2__*) ;
 int write_lock_irqsave (int *,int ) ;
 int write_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void
release_card(struct sfax_hw *card) {
 u_long flags;

 spin_lock_irqsave(&card->lock, flags);
 disable_hwirq(card);
 spin_unlock_irqrestore(&card->lock, flags);
 card->isac.release(&card->isac);
 free_irq(card->irq, card);
 card->isar.release(&card->isar);
 mISDN_unregister_device(&card->isac.dch.dev);
 release_region(card->cfg, 256);
 pci_disable_device(card->pdev);
 pci_set_drvdata(card->pdev, ((void*)0));
 write_lock_irqsave(&card_lock, flags);
 list_del(&card->list);
 write_unlock_irqrestore(&card_lock, flags);
 kfree(card);
 sfax_cnt--;
}
