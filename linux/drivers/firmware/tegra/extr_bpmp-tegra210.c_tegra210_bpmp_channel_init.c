
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_bpmp_channel {unsigned int index; struct tegra_bpmp* bpmp; int completion; void* ob; void* ib; } ;
struct tegra_bpmp {int dev; struct tegra210_bpmp* priv; } ;
struct tegra210_bpmp {scalar_t__ atomics; } ;


 int ENOMEM ;
 scalar_t__ RESULT_OFFSET (unsigned int) ;
 unsigned int TRIGGER_CMD_GET ;
 unsigned int TRIGGER_ID_SHIFT ;
 scalar_t__ TRIGGER_OFFSET ;
 void* devm_ioremap (int ,int ,int) ;
 int init_completion (int *) ;
 int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int tegra210_bpmp_channel_init(struct tegra_bpmp_channel *channel,
          struct tegra_bpmp *bpmp,
          unsigned int index)
{
 struct tegra210_bpmp *priv = bpmp->priv;
 u32 address;
 void *p;


 writel(index << TRIGGER_ID_SHIFT | TRIGGER_CMD_GET,
        priv->atomics + TRIGGER_OFFSET);
 address = readl(priv->atomics + RESULT_OFFSET(index));

 p = devm_ioremap(bpmp->dev, address, 0x80);
 if (!p)
  return -ENOMEM;

 channel->ib = p;
 channel->ob = p;
 channel->index = index;
 init_completion(&channel->completion);
 channel->bpmp = bpmp;

 return 0;
}
