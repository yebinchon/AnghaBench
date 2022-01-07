
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ core_pwr_cnt; } ;
struct omap_hdmi {int core_enabled; int vdda_reg; TYPE_1__ core; } ;


 int hdmi_runtime_put (struct omap_hdmi*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void hdmi_power_off_core(struct omap_hdmi *hdmi)
{
 if (--hdmi->core.core_pwr_cnt)
  return;

 hdmi->core_enabled = 0;

 hdmi_runtime_put(hdmi);
 regulator_disable(hdmi->vdda_reg);
}
