
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct extcon_dev {int lock; int * nh; } ;


 int EINVAL ;
 int find_cable_index_by_id (struct extcon_dev*,unsigned int) ;
 int raw_notifier_chain_register (int *,struct notifier_block*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int extcon_register_notifier(struct extcon_dev *edev, unsigned int id,
        struct notifier_block *nb)
{
 unsigned long flags;
 int ret, idx = -EINVAL;

 if (!edev || !nb)
  return -EINVAL;

 idx = find_cable_index_by_id(edev, id);
 if (idx < 0)
  return idx;

 spin_lock_irqsave(&edev->lock, flags);
 ret = raw_notifier_chain_register(&edev->nh[idx], nb);
 spin_unlock_irqrestore(&edev->lock, flags);

 return ret;
}
