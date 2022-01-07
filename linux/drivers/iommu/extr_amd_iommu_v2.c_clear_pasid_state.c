
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_state {int dummy; } ;
struct device_state {int lock; } ;


 struct pasid_state** __get_pasid_state_ptr (struct device_state*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void clear_pasid_state(struct device_state *dev_state, int pasid)
{
 struct pasid_state **ptr;
 unsigned long flags;

 spin_lock_irqsave(&dev_state->lock, flags);
 ptr = __get_pasid_state_ptr(dev_state, pasid, 1);

 if (ptr == ((void*)0))
  goto out_unlock;

 *ptr = ((void*)0);

out_unlock:
 spin_unlock_irqrestore(&dev_state->lock, flags);
}
