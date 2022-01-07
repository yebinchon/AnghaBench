
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_3__ {int queue; int error; } ;
struct dmxdev_filter {TYPE_1__ buffer; TYPE_2__* dev; int state; } ;
struct TYPE_4__ {int lock; } ;


 int DMXDEV_STATE_TIMEDOUT ;
 int ETIMEDOUT ;
 struct dmxdev_filter* dmxdevfilter ;
 struct dmxdev_filter* from_timer (int ,struct timer_list*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int timer ;
 int wake_up (int *) ;

__attribute__((used)) static void dvb_dmxdev_filter_timeout(struct timer_list *t)
{
 struct dmxdev_filter *dmxdevfilter = from_timer(dmxdevfilter, t, timer);

 dmxdevfilter->buffer.error = -ETIMEDOUT;
 spin_lock_irq(&dmxdevfilter->dev->lock);
 dmxdevfilter->state = DMXDEV_STATE_TIMEDOUT;
 spin_unlock_irq(&dmxdevfilter->dev->lock);
 wake_up(&dmxdevfilter->buffer.queue);
}
