
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct device_state {int count; } ;


 struct device_state* __get_device_state (int ) ;
 int atomic_inc (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int state_lock ;

__attribute__((used)) static struct device_state *get_device_state(u16 devid)
{
 struct device_state *dev_state;
 unsigned long flags;

 spin_lock_irqsave(&state_lock, flags);
 dev_state = __get_device_state(devid);
 if (dev_state != ((void*)0))
  atomic_inc(&dev_state->count);
 spin_unlock_irqrestore(&state_lock, flags);

 return dev_state;
}
