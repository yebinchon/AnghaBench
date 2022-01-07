
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bpmp_channel {struct tegra_bpmp* bpmp; } ;
struct TYPE_2__ {int lock; int allocated; } ;
struct tegra_bpmp {TYPE_1__ threaded; int lock; } ;
typedef int ssize_t ;


 int __tegra_bpmp_channel_read (struct tegra_bpmp_channel*,void*,size_t,int*) ;
 int clear_bit (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_bpmp_channel_get_thread_index (struct tegra_bpmp_channel*) ;
 int up (int *) ;

__attribute__((used)) static ssize_t tegra_bpmp_channel_read(struct tegra_bpmp_channel *channel,
           void *data, size_t size, int *ret)
{
 struct tegra_bpmp *bpmp = channel->bpmp;
 unsigned long flags;
 ssize_t err;
 int index;

 index = tegra_bpmp_channel_get_thread_index(channel);
 if (index < 0) {
  err = index;
  goto unlock;
 }

 spin_lock_irqsave(&bpmp->lock, flags);
 err = __tegra_bpmp_channel_read(channel, data, size, ret);
 clear_bit(index, bpmp->threaded.allocated);
 spin_unlock_irqrestore(&bpmp->lock, flags);

unlock:
 up(&bpmp->threaded.lock);

 return err;
}
