
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsi_data {int ulps_enabled; int num_lanes_supported; TYPE_1__* lanes; } ;
struct TYPE_2__ {scalar_t__ function; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int DSI_CIO_IRQ_ULPSACTIVENOT_ALL0 ;
 int DSI_CLK_CTRL ;
 int DSI_COMPLEXIO_CFG2 ;
 int DSI_COMPLEXIO_POWER_ULPS ;
 scalar_t__ DSI_LANE_UNUSED ;
 int DSSDBG (char*) ;
 int DSSERR (char*) ;
 int EIO ;
 int REG_FLD_MOD (struct dsi_data*,int ,unsigned int,int,int) ;
 scalar_t__ REG_GET (struct dsi_data*,int ,int,int) ;
 int WARN_ON (int) ;
 int completion ;
 int dsi_bus_is_locked (struct dsi_data*) ;
 int dsi_cio_power (struct dsi_data*,int ) ;
 int dsi_completion_handler ;
 int dsi_force_tx_stop_mode_io (struct dsi_data*) ;
 int dsi_if_enable (struct dsi_data*,int) ;
 int dsi_read_reg (struct dsi_data*,int ) ;
 int dsi_register_isr_cio (struct dsi_data*,int ,int *,int ) ;
 int dsi_sync_vc (struct dsi_data*,int) ;
 int dsi_unregister_isr_cio (struct dsi_data*,int ,int *,int ) ;
 int dsi_vc_enable (struct dsi_data*,int,int) ;
 int msecs_to_jiffies (int) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int dsi_enter_ulps(struct dsi_data *dsi)
{
 DECLARE_COMPLETION_ONSTACK(completion);
 int r, i;
 unsigned int mask;

 DSSDBG("Entering ULPS");

 WARN_ON(!dsi_bus_is_locked(dsi));

 WARN_ON(dsi->ulps_enabled);

 if (dsi->ulps_enabled)
  return 0;


 if (REG_GET(dsi, DSI_CLK_CTRL, 13, 13)) {
  dsi_if_enable(dsi, 0);
  REG_FLD_MOD(dsi, DSI_CLK_CTRL, 0, 13, 13);
  dsi_if_enable(dsi, 1);
 }

 dsi_sync_vc(dsi, 0);
 dsi_sync_vc(dsi, 1);
 dsi_sync_vc(dsi, 2);
 dsi_sync_vc(dsi, 3);

 dsi_force_tx_stop_mode_io(dsi);

 dsi_vc_enable(dsi, 0, 0);
 dsi_vc_enable(dsi, 1, 0);
 dsi_vc_enable(dsi, 2, 0);
 dsi_vc_enable(dsi, 3, 0);

 if (REG_GET(dsi, DSI_COMPLEXIO_CFG2, 16, 16)) {
  DSSERR("HS busy when enabling ULPS\n");
  return -EIO;
 }

 if (REG_GET(dsi, DSI_COMPLEXIO_CFG2, 17, 17)) {
  DSSERR("LP busy when enabling ULPS\n");
  return -EIO;
 }

 r = dsi_register_isr_cio(dsi, dsi_completion_handler, &completion,
   DSI_CIO_IRQ_ULPSACTIVENOT_ALL0);
 if (r)
  return r;

 mask = 0;

 for (i = 0; i < dsi->num_lanes_supported; ++i) {
  if (dsi->lanes[i].function == DSI_LANE_UNUSED)
   continue;
  mask |= 1 << i;
 }


 REG_FLD_MOD(dsi, DSI_COMPLEXIO_CFG2, mask, 9, 5);


 dsi_read_reg(dsi, DSI_COMPLEXIO_CFG2);

 if (wait_for_completion_timeout(&completion,
    msecs_to_jiffies(1000)) == 0) {
  DSSERR("ULPS enable timeout\n");
  r = -EIO;
  goto err;
 }

 dsi_unregister_isr_cio(dsi, dsi_completion_handler, &completion,
   DSI_CIO_IRQ_ULPSACTIVENOT_ALL0);


 REG_FLD_MOD(dsi, DSI_COMPLEXIO_CFG2, 0, 9, 5);


 dsi_read_reg(dsi, DSI_COMPLEXIO_CFG2);

 dsi_cio_power(dsi, DSI_COMPLEXIO_POWER_ULPS);

 dsi_if_enable(dsi, 0);

 dsi->ulps_enabled = 1;

 return 0;

err:
 dsi_unregister_isr_cio(dsi, dsi_completion_handler, &completion,
   DSI_CIO_IRQ_ULPSACTIVENOT_ALL0);
 return r;
}
