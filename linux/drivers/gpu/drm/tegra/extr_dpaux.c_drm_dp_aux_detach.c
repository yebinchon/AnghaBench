
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dpaux {int * output; int vdd; int irq; } ;
struct drm_dp_aux {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int ETIMEDOUT ;
 int connector_status_disconnected ;
 int disable_irq (int ) ;
 int drm_dp_aux_detect (struct drm_dp_aux*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int regulator_disable (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 struct tegra_dpaux* to_dpaux (struct drm_dp_aux*) ;
 int usleep_range (int,int) ;

int drm_dp_aux_detach(struct drm_dp_aux *aux)
{
 struct tegra_dpaux *dpaux = to_dpaux(aux);
 unsigned long timeout;
 int err;

 disable_irq(dpaux->irq);

 err = regulator_disable(dpaux->vdd);
 if (err < 0)
  return err;

 timeout = jiffies + msecs_to_jiffies(250);

 while (time_before(jiffies, timeout)) {
  enum drm_connector_status status;

  status = drm_dp_aux_detect(aux);
  if (status == connector_status_disconnected) {
   dpaux->output = ((void*)0);
   return 0;
  }

  usleep_range(1000, 2000);
 }

 return -ETIMEDOUT;
}
