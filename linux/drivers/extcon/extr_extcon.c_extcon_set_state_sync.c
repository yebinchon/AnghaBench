
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extcon_dev {int lock; } ;


 int extcon_set_state (struct extcon_dev*,unsigned int,int) ;
 int extcon_sync (struct extcon_dev*,unsigned int) ;
 int find_cable_index_by_id (struct extcon_dev*,unsigned int) ;
 int is_extcon_changed (struct extcon_dev*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int extcon_set_state_sync(struct extcon_dev *edev, unsigned int id, bool state)
{
 int ret, index;
 unsigned long flags;

 index = find_cable_index_by_id(edev, id);
 if (index < 0)
  return index;


 spin_lock_irqsave(&edev->lock, flags);
 ret = is_extcon_changed(edev, index, state);
 spin_unlock_irqrestore(&edev->lock, flags);
 if (!ret)
  return 0;

 ret = extcon_set_state(edev, id, state);
 if (ret < 0)
  return ret;

 return extcon_sync(edev, id);
}
