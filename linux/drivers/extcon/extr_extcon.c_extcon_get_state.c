
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extcon_dev {int lock; } ;


 int EINVAL ;
 int find_cable_index_by_id (struct extcon_dev*,unsigned int const) ;
 int is_extcon_attached (struct extcon_dev*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int extcon_get_state(struct extcon_dev *edev, const unsigned int id)
{
 int index, state;
 unsigned long flags;

 if (!edev)
  return -EINVAL;

 index = find_cable_index_by_id(edev, id);
 if (index < 0)
  return index;

 spin_lock_irqsave(&edev->lock, flags);
 state = is_extcon_attached(edev, index);
 spin_unlock_irqrestore(&edev->lock, flags);

 return state;
}
