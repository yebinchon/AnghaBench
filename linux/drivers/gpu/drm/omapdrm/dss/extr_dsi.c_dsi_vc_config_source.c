
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dsi_data {TYPE_2__* vc; TYPE_1__* data; } ;
typedef enum dsi_vc_source { ____Placeholder_dsi_vc_source } dsi_vc_source ;
struct TYPE_4__ {int source; } ;
struct TYPE_3__ {int quirks; } ;


 int DSI_QUIRK_DCS_CMD_CONFIG_VC ;
 int DSI_VC_CTRL (int) ;
 int DSI_VC_SOURCE_VP ;
 int DSSDBG (char*,int) ;
 int DSSERR (char*,int) ;
 int EIO ;
 int REG_FLD_MOD (struct dsi_data*,int ,int,int,int) ;
 int dsi_sync_vc (struct dsi_data*,int) ;
 int dsi_vc_enable (struct dsi_data*,int,int) ;
 int wait_for_bit_change (struct dsi_data*,int ,int,int ) ;

__attribute__((used)) static int dsi_vc_config_source(struct dsi_data *dsi, int channel,
    enum dsi_vc_source source)
{
 if (dsi->vc[channel].source == source)
  return 0;

 DSSDBG("Source config of virtual channel %d", channel);

 dsi_sync_vc(dsi, channel);

 dsi_vc_enable(dsi, channel, 0);


 if (!wait_for_bit_change(dsi, DSI_VC_CTRL(channel), 15, 0)) {
  DSSERR("vc(%d) busy when trying to config for VP\n", channel);
  return -EIO;
 }


 REG_FLD_MOD(dsi, DSI_VC_CTRL(channel), source, 1, 1);


 if (dsi->data->quirks & DSI_QUIRK_DCS_CMD_CONFIG_VC) {
  bool enable = source == DSI_VC_SOURCE_VP;
  REG_FLD_MOD(dsi, DSI_VC_CTRL(channel), enable, 30, 30);
 }

 dsi_vc_enable(dsi, channel, 1);

 dsi->vc[channel].source = source;

 return 0;
}
