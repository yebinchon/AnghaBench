
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* chan; scalar_t__ regs; struct tegra_hsp* hsp; } ;
struct tegra_hsp_mailbox {int index; TYPE_3__ channel; } ;
struct TYPE_4__ {TYPE_2__* chans; } ;
struct tegra_hsp {int num_sm; TYPE_1__ mbox_sm; scalar_t__ regs; struct tegra_hsp_mailbox* mailboxes; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct tegra_hsp_mailbox* con_priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SZ_32K ;
 scalar_t__ SZ_64K ;
 struct tegra_hsp_mailbox* devm_kcalloc (struct device*,int,int,int ) ;

__attribute__((used)) static int tegra_hsp_add_mailboxes(struct tegra_hsp *hsp, struct device *dev)
{
 int i;

 hsp->mailboxes = devm_kcalloc(dev, hsp->num_sm, sizeof(*hsp->mailboxes),
          GFP_KERNEL);
 if (!hsp->mailboxes)
  return -ENOMEM;

 for (i = 0; i < hsp->num_sm; i++) {
  struct tegra_hsp_mailbox *mb = &hsp->mailboxes[i];

  mb->index = i;

  mb->channel.hsp = hsp;
  mb->channel.regs = hsp->regs + SZ_64K + i * SZ_32K;
  mb->channel.chan = &hsp->mbox_sm.chans[i];
  mb->channel.chan->con_priv = mb;
 }

 return 0;
}
