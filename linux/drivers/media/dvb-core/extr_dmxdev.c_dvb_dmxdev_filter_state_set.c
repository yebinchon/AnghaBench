
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmxdev_filter {int state; TYPE_1__* dev; } ;
struct TYPE_2__ {int lock; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline void dvb_dmxdev_filter_state_set(struct dmxdev_filter
            *dmxdevfilter, int state)
{
 spin_lock_irq(&dmxdevfilter->dev->lock);
 dmxdevfilter->state = state;
 spin_unlock_irq(&dmxdevfilter->dev->lock);
}
