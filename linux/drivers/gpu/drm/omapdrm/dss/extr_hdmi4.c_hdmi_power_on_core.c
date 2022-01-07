
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int core_pwr_cnt; } ;
struct omap_hdmi {int core_enabled; TYPE_1__ core; int vdda_reg; int dss; } ;


 int DSS_HDMI_M_PCLK ;
 int dss_select_hdmi_venc_clk_source (int ,int ) ;
 int hdmi4_core_powerdown_disable (TYPE_1__*) ;
 int hdmi_runtime_get (struct omap_hdmi*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int hdmi_power_on_core(struct omap_hdmi *hdmi)
{
 int r;

 if (hdmi->core.core_pwr_cnt++)
  return 0;

 r = regulator_enable(hdmi->vdda_reg);
 if (r)
  goto err_reg_enable;

 r = hdmi_runtime_get(hdmi);
 if (r)
  goto err_runtime_get;

 hdmi4_core_powerdown_disable(&hdmi->core);


 dss_select_hdmi_venc_clk_source(hdmi->dss, DSS_HDMI_M_PCLK);

 hdmi->core_enabled = 1;

 return 0;

err_runtime_get:
 regulator_disable(hdmi->vdda_reg);
err_reg_enable:
 hdmi->core.core_pwr_cnt--;

 return r;
}
