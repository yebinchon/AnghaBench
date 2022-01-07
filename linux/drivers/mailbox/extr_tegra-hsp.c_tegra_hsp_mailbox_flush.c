
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_hsp_channel {int dummy; } ;
struct tegra_hsp_mailbox {struct tegra_hsp_channel channel; } ;
struct mbox_chan {struct tegra_hsp_mailbox* con_priv; } ;


 int ETIME ;
 int HSP_SM_SHRD_MBOX ;
 int HSP_SM_SHRD_MBOX_FULL ;
 unsigned long jiffies ;
 int mbox_chan_txdone (struct mbox_chan*,int ) ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int tegra_hsp_channel_readl (struct tegra_hsp_channel*,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int tegra_hsp_mailbox_flush(struct mbox_chan *chan,
       unsigned long timeout)
{
 struct tegra_hsp_mailbox *mb = chan->con_priv;
 struct tegra_hsp_channel *ch = &mb->channel;
 u32 value;

 timeout = jiffies + msecs_to_jiffies(timeout);

 while (time_before(jiffies, timeout)) {
  value = tegra_hsp_channel_readl(ch, HSP_SM_SHRD_MBOX);
  if ((value & HSP_SM_SHRD_MBOX_FULL) == 0) {
   mbox_chan_txdone(chan, 0);
   return 0;
  }

  udelay(1);
 }

 return -ETIME;
}
