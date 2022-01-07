
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int polled; } ;
struct tegra_output {TYPE_1__ connector; } ;
struct tegra_dpaux {int irq; int vdd; struct tegra_output* output; } ;
struct drm_dp_aux {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int DRM_CONNECTOR_POLL_HPD ;
 int ETIMEDOUT ;
 int connector_status_connected ;
 int drm_dp_aux_detect (struct drm_dp_aux*) ;
 int enable_irq (int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int regulator_enable (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 struct tegra_dpaux* to_dpaux (struct drm_dp_aux*) ;
 int usleep_range (int,int) ;

int drm_dp_aux_attach(struct drm_dp_aux *aux, struct tegra_output *output)
{
 struct tegra_dpaux *dpaux = to_dpaux(aux);
 unsigned long timeout;
 int err;

 output->connector.polled = DRM_CONNECTOR_POLL_HPD;
 dpaux->output = output;

 err = regulator_enable(dpaux->vdd);
 if (err < 0)
  return err;

 timeout = jiffies + msecs_to_jiffies(250);

 while (time_before(jiffies, timeout)) {
  enum drm_connector_status status;

  status = drm_dp_aux_detect(aux);
  if (status == connector_status_connected) {
   enable_irq(dpaux->irq);
   return 0;
  }

  usleep_range(1000, 2000);
 }

 return -ETIMEDOUT;
}
