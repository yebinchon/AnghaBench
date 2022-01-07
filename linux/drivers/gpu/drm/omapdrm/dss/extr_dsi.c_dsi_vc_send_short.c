
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct dsi_data {TYPE_1__* vc; scalar_t__ debug_write; } ;
struct TYPE_2__ {int vc_id; } ;


 int DSI_VC_CTRL (int) ;
 int DSI_VC_SHORT_PACKET_HEADER (int) ;
 int DSI_VC_SOURCE_L4 ;
 int DSSDBG (char*,int,int,int,int) ;
 int DSSERR (char*) ;
 int EINVAL ;
 scalar_t__ FLD_GET (int ,int,int) ;
 int WARN_ON (int) ;
 int dsi_bus_is_locked (struct dsi_data*) ;
 int dsi_read_reg (struct dsi_data*,int ) ;
 int dsi_vc_config_source (struct dsi_data*,int,int ) ;
 int dsi_write_reg (struct dsi_data*,int ,int) ;

__attribute__((used)) static int dsi_vc_send_short(struct dsi_data *dsi, int channel, u8 data_type,
        u16 data, u8 ecc)
{
 u32 r;
 u8 data_id;

 WARN_ON(!dsi_bus_is_locked(dsi));

 if (dsi->debug_write)
  DSSDBG("dsi_vc_send_short(ch%d, dt %#x, b1 %#x, b2 %#x)\n",
    channel,
    data_type, data & 0xff, (data >> 8) & 0xff);

 dsi_vc_config_source(dsi, channel, DSI_VC_SOURCE_L4);

 if (FLD_GET(dsi_read_reg(dsi, DSI_VC_CTRL(channel)), 16, 16)) {
  DSSERR("ERROR FIFO FULL, aborting transfer\n");
  return -EINVAL;
 }

 data_id = data_type | dsi->vc[channel].vc_id << 6;

 r = (data_id << 0) | (data << 8) | (ecc << 24);

 dsi_write_reg(dsi, DSI_VC_SHORT_PACKET_HEADER(channel), r);

 return 0;
}
