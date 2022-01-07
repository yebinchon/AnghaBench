
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tegra_bpmp_channel {int dummy; } ;
struct TYPE_8__ {int lock; int allocated; int busy; } ;
struct tegra_bpmp {TYPE_4__ threaded; int lock; struct tegra_bpmp_channel* threaded_channels; TYPE_3__* soc; } ;
struct TYPE_5__ {unsigned long timeout; unsigned int count; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;
struct TYPE_7__ {TYPE_2__ channels; } ;


 int EBUSY ;
 struct tegra_bpmp_channel* ERR_PTR (int) ;
 int MSG_ACK ;
 int MSG_RING ;
 int __tegra_bpmp_channel_write (struct tegra_bpmp_channel*,unsigned int,int,void const*,size_t) ;
 int clear_bit (unsigned int,int ) ;
 int down_timeout (int *,int ) ;
 unsigned int find_first_zero_bit (int ,unsigned int) ;
 int set_bit (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_bpmp_is_request_channel_free (struct tegra_bpmp_channel*) ;
 int up (int *) ;
 int usecs_to_jiffies (unsigned long) ;

__attribute__((used)) static struct tegra_bpmp_channel *
tegra_bpmp_write_threaded(struct tegra_bpmp *bpmp, unsigned int mrq,
     const void *data, size_t size)
{
 unsigned long timeout = bpmp->soc->channels.thread.timeout;
 unsigned int count = bpmp->soc->channels.thread.count;
 struct tegra_bpmp_channel *channel;
 unsigned long flags;
 unsigned int index;
 int err;

 err = down_timeout(&bpmp->threaded.lock, usecs_to_jiffies(timeout));
 if (err < 0)
  return ERR_PTR(err);

 spin_lock_irqsave(&bpmp->lock, flags);

 index = find_first_zero_bit(bpmp->threaded.allocated, count);
 if (index == count) {
  err = -EBUSY;
  goto unlock;
 }

 channel = &bpmp->threaded_channels[index];

 if (!tegra_bpmp_is_request_channel_free(channel)) {
  err = -EBUSY;
  goto unlock;
 }

 set_bit(index, bpmp->threaded.allocated);

 err = __tegra_bpmp_channel_write(channel, mrq, MSG_ACK | MSG_RING,
      data, size);
 if (err < 0)
  goto clear_allocated;

 set_bit(index, bpmp->threaded.busy);

 spin_unlock_irqrestore(&bpmp->lock, flags);
 return channel;

clear_allocated:
 clear_bit(index, bpmp->threaded.allocated);
unlock:
 spin_unlock_irqrestore(&bpmp->lock, flags);
 up(&bpmp->threaded.lock);

 return ERR_PTR(err);
}
