
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_mbox_device {int* enabled; } ;
struct sti_channel {unsigned int instance; unsigned int channel; struct sti_mbox_device* mdev; } ;
struct mbox_chan {struct sti_channel* con_priv; } ;


 int BIT (unsigned int) ;

__attribute__((used)) static inline bool sti_mbox_channel_is_enabled(struct mbox_chan *chan)
{
 struct sti_channel *chan_info = chan->con_priv;
 struct sti_mbox_device *mdev = chan_info->mdev;
 unsigned int instance = chan_info->instance;
 unsigned int channel = chan_info->channel;

 return mdev->enabled[instance] & BIT(channel);
}
