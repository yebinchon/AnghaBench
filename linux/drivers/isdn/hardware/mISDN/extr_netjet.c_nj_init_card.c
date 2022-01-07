
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {int (* init ) (TYPE_2__*) ;} ;
struct tiger_hw {int irq; int lock; int * bc; TYPE_2__ isac; int name; TYPE_1__* pdev; } ;
struct TYPE_3__ {int irq; } ;


 int EIO ;
 int IRQF_SHARED ;
 int ISDN_P_NONE ;
 int inittiger (struct tiger_hw*) ;
 int mode_tiger (int *,int ) ;
 int nj_disable_hwirq (struct tiger_hw*) ;
 int nj_irq ;
 int nj_reset (struct tiger_hw*) ;
 int pr_info (char*,int ,int) ;
 scalar_t__ request_irq (int,int ,int ,int ,struct tiger_hw*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int
nj_init_card(struct tiger_hw *card)
{
 u_long flags;
 int ret;

 spin_lock_irqsave(&card->lock, flags);
 nj_disable_hwirq(card);
 spin_unlock_irqrestore(&card->lock, flags);

 card->irq = card->pdev->irq;
 if (request_irq(card->irq, nj_irq, IRQF_SHARED, card->name, card)) {
  pr_info("%s: couldn't get interrupt %d\n",
   card->name, card->irq);
  card->irq = -1;
  return -EIO;
 }

 spin_lock_irqsave(&card->lock, flags);
 nj_reset(card);
 ret = card->isac.init(&card->isac);
 if (ret)
  goto error;
 ret = inittiger(card);
 if (ret)
  goto error;
 mode_tiger(&card->bc[0], ISDN_P_NONE);
 mode_tiger(&card->bc[1], ISDN_P_NONE);
error:
 spin_unlock_irqrestore(&card->lock, flags);
 return ret;
}
