
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tegra_bpmp_mrq_handler_t ;
struct tegra_bpmp_mrq {unsigned int mrq; int list; void* data; scalar_t__ handler; } ;
struct tegra_bpmp {int lock; int mrqs; int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct tegra_bpmp_mrq* devm_kzalloc (int ,int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int tegra_bpmp_request_mrq(struct tegra_bpmp *bpmp, unsigned int mrq,
      tegra_bpmp_mrq_handler_t handler, void *data)
{
 struct tegra_bpmp_mrq *entry;
 unsigned long flags;

 if (!handler)
  return -EINVAL;

 entry = devm_kzalloc(bpmp->dev, sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;

 spin_lock_irqsave(&bpmp->lock, flags);

 entry->mrq = mrq;
 entry->handler = handler;
 entry->data = data;
 list_add(&entry->list, &bpmp->mrqs);

 spin_unlock_irqrestore(&bpmp->lock, flags);

 return 0;
}
