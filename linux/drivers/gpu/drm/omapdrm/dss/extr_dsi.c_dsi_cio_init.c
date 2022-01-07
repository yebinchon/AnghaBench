
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int ddr_clk_always_on; } ;
struct dsi_data {int ulps_enabled; int num_lanes_supported; scalar_t__ mode; TYPE_2__ vm_timings; TYPE_1__* lanes; } ;
typedef int ktime_t ;
struct TYPE_3__ {scalar_t__ function; } ;


 int DSI_CLK_CTRL ;
 int DSI_COMPLEXIO_CFG1 ;
 int DSI_COMPLEXIO_POWER_OFF ;
 int DSI_COMPLEXIO_POWER_ON ;
 int DSI_DSIPHY_CFG5 ;
 scalar_t__ DSI_LANE_UNUSED ;
 int DSI_TIMING1 ;
 int DSSDBG (char*) ;
 int DSSERR (char*) ;
 int EIO ;
 int ENODEV ;
 int FLD_MOD (int ,int,int,int) ;
 int HRTIMER_MODE_REL ;
 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ;
 int REG_FLD_MOD (struct dsi_data*,int ,int,int,int) ;
 int TASK_UNINTERRUPTIBLE ;
 int dsi_cio_disable_lane_override (struct dsi_data*) ;
 int dsi_cio_enable_lane_override (struct dsi_data*,unsigned int,int ) ;
 int dsi_cio_power (struct dsi_data*,int ) ;
 int dsi_cio_timings (struct dsi_data*) ;
 int dsi_cio_wait_tx_clk_esc_reset (struct dsi_data*) ;
 int dsi_disable_pads (struct dsi_data*) ;
 int dsi_disable_scp_clk (struct dsi_data*) ;
 int dsi_enable_pads (struct dsi_data*,int ) ;
 int dsi_enable_scp_clk (struct dsi_data*) ;
 int dsi_get_lane_mask (struct dsi_data*) ;
 int dsi_if_enable (struct dsi_data*,int) ;
 int dsi_read_reg (struct dsi_data*,int ) ;
 int dsi_set_lane_config (struct dsi_data*) ;
 int dsi_write_reg (struct dsi_data*,int ,int ) ;
 int ns_to_ktime (int) ;
 int schedule_hrtimeout (int *,int ) ;
 int set_current_state (int ) ;
 int wait_for_bit_change (struct dsi_data*,int ,int,int) ;

__attribute__((used)) static int dsi_cio_init(struct dsi_data *dsi)
{
 int r;
 u32 l;

 DSSDBG("DSI CIO init starts");

 r = dsi_enable_pads(dsi, dsi_get_lane_mask(dsi));
 if (r)
  return r;

 dsi_enable_scp_clk(dsi);




 dsi_read_reg(dsi, DSI_DSIPHY_CFG5);

 if (!wait_for_bit_change(dsi, DSI_DSIPHY_CFG5, 30, 1)) {
  DSSERR("CIO SCP Clock domain not coming out of reset.\n");
  r = -EIO;
  goto err_scp_clk_dom;
 }

 r = dsi_set_lane_config(dsi);
 if (r)
  goto err_scp_clk_dom;


 l = dsi_read_reg(dsi, DSI_TIMING1);
 l = FLD_MOD(l, 1, 15, 15);
 l = FLD_MOD(l, 1, 14, 14);
 l = FLD_MOD(l, 1, 13, 13);
 l = FLD_MOD(l, 0x1fff, 12, 0);
 dsi_write_reg(dsi, DSI_TIMING1, l);

 if (dsi->ulps_enabled) {
  unsigned int mask_p;
  int i;

  DSSDBG("manual ulps exit\n");
  mask_p = 0;

  for (i = 0; i < dsi->num_lanes_supported; ++i) {
   if (dsi->lanes[i].function == DSI_LANE_UNUSED)
    continue;
   mask_p |= 1 << i;
  }

  dsi_cio_enable_lane_override(dsi, mask_p, 0);
 }

 r = dsi_cio_power(dsi, DSI_COMPLEXIO_POWER_ON);
 if (r)
  goto err_cio_pwr;

 if (!wait_for_bit_change(dsi, DSI_COMPLEXIO_CFG1, 29, 1)) {
  DSSERR("CIO PWR clock domain not coming out of reset.\n");
  r = -ENODEV;
  goto err_cio_pwr_dom;
 }

 dsi_if_enable(dsi, 1);
 dsi_if_enable(dsi, 0);
 REG_FLD_MOD(dsi, DSI_CLK_CTRL, 1, 20, 20);

 r = dsi_cio_wait_tx_clk_esc_reset(dsi);
 if (r)
  goto err_tx_clk_esc_rst;

 if (dsi->ulps_enabled) {

  ktime_t wait = ns_to_ktime(1000 * 1000);
  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule_hrtimeout(&wait, HRTIMER_MODE_REL);



  dsi_cio_disable_lane_override(dsi);
 }


 REG_FLD_MOD(dsi, DSI_TIMING1, 0, 15, 15);

 dsi_cio_timings(dsi);

 if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {

  REG_FLD_MOD(dsi, DSI_CLK_CTRL,
   dsi->vm_timings.ddr_clk_always_on, 13, 13);
 }

 dsi->ulps_enabled = 0;

 DSSDBG("CIO init done\n");

 return 0;

err_tx_clk_esc_rst:
 REG_FLD_MOD(dsi, DSI_CLK_CTRL, 0, 20, 20);
err_cio_pwr_dom:
 dsi_cio_power(dsi, DSI_COMPLEXIO_POWER_OFF);
err_cio_pwr:
 if (dsi->ulps_enabled)
  dsi_cio_disable_lane_override(dsi);
err_scp_clk_dom:
 dsi_disable_scp_clk(dsi);
 dsi_disable_pads(dsi);
 return r;
}
