
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct mISDNtimerdev {int work; scalar_t__ next_id; int lock; int pending; int wait; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct mISDNtimer {int id; TYPE_1__ tl; int list; struct mISDNtimerdev* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int add_timer (TYPE_1__*) ;
 int dev_expire_timer ;
 scalar_t__ jiffies ;
 struct mISDNtimer* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int timer_setup (TYPE_1__*,int ,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int
misdn_add_timer(struct mISDNtimerdev *dev, int timeout)
{
 int id;
 struct mISDNtimer *timer;

 if (!timeout) {
  dev->work = 1;
  wake_up_interruptible(&dev->wait);
  id = 0;
 } else {
  timer = kzalloc(sizeof(struct mISDNtimer), GFP_KERNEL);
  if (!timer)
   return -ENOMEM;
  timer->dev = dev;
  timer_setup(&timer->tl, dev_expire_timer, 0);
  spin_lock_irq(&dev->lock);
  id = timer->id = dev->next_id++;
  if (dev->next_id < 0)
   dev->next_id = 1;
  list_add_tail(&timer->list, &dev->pending);
  timer->tl.expires = jiffies + ((HZ * (u_long)timeout) / 1000);
  add_timer(&timer->tl);
  spin_unlock_irq(&dev->lock);
 }
 return id;
}
