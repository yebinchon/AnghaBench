
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct tegra_dpaux {TYPE_2__* output; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ connector; } ;


 int drm_helper_hpd_irq_event (int ) ;
 struct tegra_dpaux* work_to_dpaux (struct work_struct*) ;

__attribute__((used)) static void tegra_dpaux_hotplug(struct work_struct *work)
{
 struct tegra_dpaux *dpaux = work_to_dpaux(work);

 if (dpaux->output)
  drm_helper_hpd_irq_event(dpaux->output->connector.dev);
}
