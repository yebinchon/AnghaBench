
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_hsp_doorbell {int dummy; } ;
struct tegra_hsp {int lock; } ;


 struct tegra_hsp_doorbell* __tegra_hsp_doorbell_get (struct tegra_hsp*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct tegra_hsp_doorbell *
tegra_hsp_doorbell_get(struct tegra_hsp *hsp, unsigned int master)
{
 struct tegra_hsp_doorbell *db;
 unsigned long flags;

 spin_lock_irqsave(&hsp->lock, flags);
 db = __tegra_hsp_doorbell_get(hsp, master);
 spin_unlock_irqrestore(&hsp->lock, flags);

 return db;
}
