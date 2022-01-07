
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp_mrq {int list; } ;
struct tegra_bpmp {int lock; int dev; } ;


 int devm_kfree (int ,struct tegra_bpmp_mrq*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct tegra_bpmp_mrq* tegra_bpmp_find_mrq (struct tegra_bpmp*,unsigned int) ;

void tegra_bpmp_free_mrq(struct tegra_bpmp *bpmp, unsigned int mrq, void *data)
{
 struct tegra_bpmp_mrq *entry;
 unsigned long flags;

 spin_lock_irqsave(&bpmp->lock, flags);

 entry = tegra_bpmp_find_mrq(bpmp, mrq);
 if (!entry)
  goto unlock;

 list_del(&entry->list);
 devm_kfree(bpmp->dev, entry);

unlock:
 spin_unlock_irqrestore(&bpmp->lock, flags);
}
