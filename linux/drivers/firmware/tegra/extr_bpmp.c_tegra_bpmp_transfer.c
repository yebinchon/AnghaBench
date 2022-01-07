
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int ret; int size; int data; } ;
struct TYPE_6__ {int size; int data; } ;
struct tegra_bpmp_message {TYPE_5__ rx; TYPE_1__ tx; int mrq; } ;
struct tegra_bpmp_channel {int completion; } ;
struct tegra_bpmp {TYPE_4__* soc; } ;
struct TYPE_7__ {int timeout; } ;
struct TYPE_8__ {TYPE_2__ thread; } ;
struct TYPE_9__ {TYPE_3__ channels; } ;


 int EINVAL ;
 int EPERM ;
 int ETIMEDOUT ;
 scalar_t__ IS_ERR (struct tegra_bpmp_channel*) ;
 int PTR_ERR (struct tegra_bpmp_channel*) ;
 scalar_t__ WARN_ON (int ) ;
 int irqs_disabled () ;
 int tegra_bpmp_channel_read (struct tegra_bpmp_channel*,int ,int ,int *) ;
 int tegra_bpmp_message_valid (struct tegra_bpmp_message*) ;
 int tegra_bpmp_ring_doorbell (struct tegra_bpmp*) ;
 struct tegra_bpmp_channel* tegra_bpmp_write_threaded (struct tegra_bpmp*,int ,int ,int ) ;
 unsigned long usecs_to_jiffies (int ) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

int tegra_bpmp_transfer(struct tegra_bpmp *bpmp,
   struct tegra_bpmp_message *msg)
{
 struct tegra_bpmp_channel *channel;
 unsigned long timeout;
 int err;

 if (WARN_ON(irqs_disabled()))
  return -EPERM;

 if (!tegra_bpmp_message_valid(msg))
  return -EINVAL;

 channel = tegra_bpmp_write_threaded(bpmp, msg->mrq, msg->tx.data,
         msg->tx.size);
 if (IS_ERR(channel))
  return PTR_ERR(channel);

 err = tegra_bpmp_ring_doorbell(bpmp);
 if (err < 0)
  return err;

 timeout = usecs_to_jiffies(bpmp->soc->channels.thread.timeout);

 err = wait_for_completion_timeout(&channel->completion, timeout);
 if (err == 0)
  return -ETIMEDOUT;

 return tegra_bpmp_channel_read(channel, msg->rx.data, msg->rx.size,
           &msg->rx.ret);
}
