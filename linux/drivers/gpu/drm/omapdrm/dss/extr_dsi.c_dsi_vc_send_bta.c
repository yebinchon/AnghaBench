
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_data {scalar_t__ debug_read; scalar_t__ debug_write; } ;


 int DSI_VC_CTRL (int) ;
 int DSSDBG (char*,int) ;
 int DSSERR (char*) ;
 int REG_FLD_MOD (struct dsi_data*,int ,int,int,int) ;
 scalar_t__ REG_GET (struct dsi_data*,int ,int,int) ;
 int WARN_ON (int) ;
 int dsi_bus_is_locked (struct dsi_data*) ;
 int dsi_read_reg (struct dsi_data*,int ) ;
 int dsi_vc_flush_receive_data (struct dsi_data*,int) ;

__attribute__((used)) static int dsi_vc_send_bta(struct dsi_data *dsi, int channel)
{
 if (dsi->debug_write || dsi->debug_read)
  DSSDBG("dsi_vc_send_bta %d\n", channel);

 WARN_ON(!dsi_bus_is_locked(dsi));


 if (REG_GET(dsi, DSI_VC_CTRL(channel), 20, 20)) {
  DSSERR("rx fifo not empty when sending BTA, dumping data:\n");
  dsi_vc_flush_receive_data(dsi, channel);
 }

 REG_FLD_MOD(dsi, DSI_VC_CTRL(channel), 1, 6, 6);


 dsi_read_reg(dsi, DSI_VC_CTRL(channel));

 return 0;
}
