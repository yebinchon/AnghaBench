
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct tegra_hsp* hsp; } ;
struct tegra_hsp_mailbox {scalar_t__ index; TYPE_1__ channel; int producer; } ;
struct tegra_hsp {int lock; int shared_irq; int mask; } ;
struct mbox_chan {struct tegra_hsp_mailbox* con_priv; } ;


 int BIT (scalar_t__) ;
 int EPERM ;
 scalar_t__ HSP_INT_EMPTY_SHIFT ;
 int HSP_INT_IE (int ) ;
 int HSP_SM_SHRD_MBOX ;
 int HSP_SM_SHRD_MBOX_FULL ;
 scalar_t__ WARN_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_hsp_channel_writel (TYPE_1__*,int ,int ) ;
 int tegra_hsp_writel (struct tegra_hsp*,int ,int ) ;

__attribute__((used)) static int tegra_hsp_mailbox_send_data(struct mbox_chan *chan, void *data)
{
 struct tegra_hsp_mailbox *mb = chan->con_priv;
 struct tegra_hsp *hsp = mb->channel.hsp;
 unsigned long flags;
 u32 value;

 if (WARN_ON(!mb->producer))
  return -EPERM;


 value = (u32)(unsigned long)data;
 value |= HSP_SM_SHRD_MBOX_FULL;

 tegra_hsp_channel_writel(&mb->channel, value, HSP_SM_SHRD_MBOX);


 spin_lock_irqsave(&hsp->lock, flags);

 hsp->mask |= BIT(HSP_INT_EMPTY_SHIFT + mb->index);
 tegra_hsp_writel(hsp, hsp->mask, HSP_INT_IE(hsp->shared_irq));

 spin_unlock_irqrestore(&hsp->lock, flags);

 return 0;
}
