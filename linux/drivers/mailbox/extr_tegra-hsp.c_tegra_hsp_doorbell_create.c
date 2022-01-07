
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_hsp_channel {struct tegra_hsp* hsp; scalar_t__ regs; } ;
struct tegra_hsp_doorbell {unsigned int master; unsigned int index; struct tegra_hsp_channel channel; int list; int name; } ;
struct tegra_hsp {int num_sm; int num_ss; int num_as; int lock; int doorbells; int dev; scalar_t__ regs; } ;


 int ENOMEM ;
 struct tegra_hsp_channel* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int SZ_64K ;
 int devm_kstrdup_const (int ,char const*,int ) ;
 struct tegra_hsp_doorbell* devm_kzalloc (int ,int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct tegra_hsp_channel *
tegra_hsp_doorbell_create(struct tegra_hsp *hsp, const char *name,
     unsigned int master, unsigned int index)
{
 struct tegra_hsp_doorbell *db;
 unsigned int offset;
 unsigned long flags;

 db = devm_kzalloc(hsp->dev, sizeof(*db), GFP_KERNEL);
 if (!db)
  return ERR_PTR(-ENOMEM);

 offset = (1 + (hsp->num_sm / 2) + hsp->num_ss + hsp->num_as) * SZ_64K;
 offset += index * 0x100;

 db->channel.regs = hsp->regs + offset;
 db->channel.hsp = hsp;

 db->name = devm_kstrdup_const(hsp->dev, name, GFP_KERNEL);
 db->master = master;
 db->index = index;

 spin_lock_irqsave(&hsp->lock, flags);
 list_add_tail(&db->list, &hsp->doorbells);
 spin_unlock_irqrestore(&hsp->lock, flags);

 return &db->channel;
}
