
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct extcon_dev {int lock; int nh_all; } ;


 int EINVAL ;
 int raw_notifier_chain_register (int *,struct notifier_block*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int extcon_register_notifier_all(struct extcon_dev *edev,
    struct notifier_block *nb)
{
 unsigned long flags;
 int ret;

 if (!edev || !nb)
  return -EINVAL;

 spin_lock_irqsave(&edev->lock, flags);
 ret = raw_notifier_chain_register(&edev->nh_all, nb);
 spin_unlock_irqrestore(&edev->lock, flags);

 return ret;
}
