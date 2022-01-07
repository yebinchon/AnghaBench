
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipuv3_channel {TYPE_1__* ipu; int num; } ;
struct ipu_prg_channel {int enabled; } ;
struct ipu_prg {int dev; scalar_t__ regs; struct ipu_prg_channel* chan; } ;
struct TYPE_2__ {struct ipu_prg* prg_priv; } ;


 scalar_t__ IPU_PRG_CTL ;
 int IPU_PRG_CTL_BYPASS (int) ;
 scalar_t__ IPU_PRG_REG_UPDATE ;
 int IPU_PRG_REG_UPDATE_REG_UPDATE ;
 int ipu_prg_ipu_to_prg_chan (int ) ;
 int ipu_prg_put_pre (struct ipu_prg*,int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void ipu_prg_channel_disable(struct ipuv3_channel *ipu_chan)
{
 int prg_chan = ipu_prg_ipu_to_prg_chan(ipu_chan->num);
 struct ipu_prg *prg = ipu_chan->ipu->prg_priv;
 struct ipu_prg_channel *chan;
 u32 val;

 if (prg_chan < 0)
  return;

 chan = &prg->chan[prg_chan];
 if (!chan->enabled)
  return;

 pm_runtime_get_sync(prg->dev);

 val = readl(prg->regs + IPU_PRG_CTL);
 val |= IPU_PRG_CTL_BYPASS(prg_chan);
 writel(val, prg->regs + IPU_PRG_CTL);

 val = IPU_PRG_REG_UPDATE_REG_UPDATE;
 writel(val, prg->regs + IPU_PRG_REG_UPDATE);

 pm_runtime_put(prg->dev);

 ipu_prg_put_pre(prg, prg_chan);

 chan->enabled = 0;
}
