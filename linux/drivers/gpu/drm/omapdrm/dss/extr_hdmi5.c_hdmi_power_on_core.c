
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hdmi {int core_enabled; int vdda_reg; int dss; } ;


 int DSS_HDMI_M_PCLK ;
 int dss_select_hdmi_venc_clk_source (int ,int ) ;
 int hdmi_runtime_get (struct omap_hdmi*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int hdmi_power_on_core(struct omap_hdmi *hdmi)
{
 int r;

 r = regulator_enable(hdmi->vdda_reg);
 if (r)
  return r;

 r = hdmi_runtime_get(hdmi);
 if (r)
  goto err_runtime_get;


 dss_select_hdmi_venc_clk_source(hdmi->dss, DSS_HDMI_M_PCLK);

 hdmi->core_enabled = 1;

 return 0;

err_runtime_get:
 regulator_disable(hdmi->vdda_reg);

 return r;
}
