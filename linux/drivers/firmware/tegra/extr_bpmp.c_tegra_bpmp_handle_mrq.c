
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zero ;
typedef int u32 ;
struct tegra_bpmp_mrq {int data; int (* handler ) (unsigned int,struct tegra_bpmp_channel*,int ) ;} ;
struct tegra_bpmp_channel {int dummy; } ;
struct tegra_bpmp {int lock; } ;


 int EINVAL ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (unsigned int,struct tegra_bpmp_channel*,int ) ;
 struct tegra_bpmp_mrq* tegra_bpmp_find_mrq (struct tegra_bpmp*,unsigned int) ;
 int tegra_bpmp_mrq_return (struct tegra_bpmp_channel*,int ,int *,int) ;

__attribute__((used)) static void tegra_bpmp_handle_mrq(struct tegra_bpmp *bpmp,
      unsigned int mrq,
      struct tegra_bpmp_channel *channel)
{
 struct tegra_bpmp_mrq *entry;
 u32 zero = 0;

 spin_lock(&bpmp->lock);

 entry = tegra_bpmp_find_mrq(bpmp, mrq);
 if (!entry) {
  spin_unlock(&bpmp->lock);
  tegra_bpmp_mrq_return(channel, -EINVAL, &zero, sizeof(zero));
  return;
 }

 entry->handler(mrq, channel, entry->data);

 spin_unlock(&bpmp->lock);
}
