
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ret; int size; int data; } ;
struct TYPE_3__ {int size; int data; } ;
struct tegra_bpmp_message {TYPE_2__ rx; TYPE_1__ tx; int mrq; } ;
struct tegra_bpmp_channel {int dummy; } ;
struct tegra_bpmp {int atomic_tx_lock; struct tegra_bpmp_channel* tx_channel; } ;


 int EINVAL ;
 int EPERM ;
 int MSG_ACK ;
 scalar_t__ WARN_ON (int) ;
 int __tegra_bpmp_channel_read (struct tegra_bpmp_channel*,int ,int ,int *) ;
 int irqs_disabled () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tegra_bpmp_channel_write (struct tegra_bpmp_channel*,int ,int ,int ,int ) ;
 int tegra_bpmp_message_valid (struct tegra_bpmp_message*) ;
 int tegra_bpmp_ring_doorbell (struct tegra_bpmp*) ;
 int tegra_bpmp_wait_response (struct tegra_bpmp_channel*) ;

int tegra_bpmp_transfer_atomic(struct tegra_bpmp *bpmp,
          struct tegra_bpmp_message *msg)
{
 struct tegra_bpmp_channel *channel;
 int err;

 if (WARN_ON(!irqs_disabled()))
  return -EPERM;

 if (!tegra_bpmp_message_valid(msg))
  return -EINVAL;

 channel = bpmp->tx_channel;

 spin_lock(&bpmp->atomic_tx_lock);

 err = tegra_bpmp_channel_write(channel, msg->mrq, MSG_ACK,
           msg->tx.data, msg->tx.size);
 if (err < 0) {
  spin_unlock(&bpmp->atomic_tx_lock);
  return err;
 }

 spin_unlock(&bpmp->atomic_tx_lock);

 err = tegra_bpmp_ring_doorbell(bpmp);
 if (err < 0)
  return err;

 err = tegra_bpmp_wait_response(channel);
 if (err < 0)
  return err;

 return __tegra_bpmp_channel_read(channel, msg->rx.data, msg->rx.size,
      &msg->rx.ret);
}
