
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ ddr_clk_always_on; } ;
struct dsi_data {TYPE_1__ vm_timings; } ;


 int DSI_VC_CTRL (int) ;
 int DSSDBG (char*,int,int) ;
 int REG_FLD_MOD (struct dsi_data*,int ,int,int,int) ;
 int WARN_ON (int) ;
 int dsi_bus_is_locked (struct dsi_data*) ;
 int dsi_force_tx_stop_mode_io (struct dsi_data*) ;
 int dsi_if_enable (struct dsi_data*,int) ;
 int dsi_vc_enable (struct dsi_data*,int,int) ;
 int dsi_vc_send_null (struct dsi_data*,int) ;
 struct dsi_data* to_dsi_data (struct omap_dss_device*) ;

__attribute__((used)) static void dsi_vc_enable_hs(struct omap_dss_device *dssdev, int channel,
  bool enable)
{
 struct dsi_data *dsi = to_dsi_data(dssdev);

 DSSDBG("dsi_vc_enable_hs(%d, %d)\n", channel, enable);

 WARN_ON(!dsi_bus_is_locked(dsi));

 dsi_vc_enable(dsi, channel, 0);
 dsi_if_enable(dsi, 0);

 REG_FLD_MOD(dsi, DSI_VC_CTRL(channel), enable, 9, 9);

 dsi_vc_enable(dsi, channel, 1);
 dsi_if_enable(dsi, 1);

 dsi_force_tx_stop_mode_io(dsi);


 if (dsi->vm_timings.ddr_clk_always_on && enable)
  dsi_vc_send_null(dsi, channel);
}
