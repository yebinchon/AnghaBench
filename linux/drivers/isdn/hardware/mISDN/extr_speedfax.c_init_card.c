
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_2__ {int (* init ) (TYPE_1__*) ;} ;
struct sfax_hw {int irq; int name; int irqcnt; int lock; TYPE_1__ isac; } ;


 int DEBUG_HW ;
 int EIO ;
 int IRQF_SHARED ;
 int ISAC_CMDR ;
 int WriteISAC_IND (struct sfax_hw*,int ,int) ;
 int debug ;
 int enable_hwirq (struct sfax_hw*) ;
 int free_irq (int ,struct sfax_hw*) ;
 int msleep_interruptible (int) ;
 int pr_info (char*,int ,int,...) ;
 int pr_notice (char*,int ,int ,int ) ;
 int request_irq (int ,int ,int ,int ,struct sfax_hw*) ;
 int speedfax_irq ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int
init_card(struct sfax_hw *sf)
{
 int ret, cnt = 3;
 u_long flags;

 ret = request_irq(sf->irq, speedfax_irq, IRQF_SHARED, sf->name, sf);
 if (ret) {
  pr_info("%s: couldn't get interrupt %d\n", sf->name, sf->irq);
  return ret;
 }
 while (cnt--) {
  spin_lock_irqsave(&sf->lock, flags);
  ret = sf->isac.init(&sf->isac);
  if (ret) {
   spin_unlock_irqrestore(&sf->lock, flags);
   pr_info("%s: ISAC init failed with %d\n",
    sf->name, ret);
   break;
  }
  enable_hwirq(sf);

  WriteISAC_IND(sf, ISAC_CMDR, 0x41);
  spin_unlock_irqrestore(&sf->lock, flags);
  msleep_interruptible(10);
  if (debug & DEBUG_HW)
   pr_notice("%s: IRQ %d count %d\n", sf->name,
      sf->irq, sf->irqcnt);
  if (!sf->irqcnt) {
   pr_info("%s: IRQ(%d) got no requests during init %d\n",
    sf->name, sf->irq, 3 - cnt);
  } else
   return 0;
 }
 free_irq(sf->irq, sf);
 return -EIO;
}
