
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct dsi_data {TYPE_2__* vc; TYPE_1__* data; } ;
struct TYPE_4__ {int source; } ;
struct TYPE_3__ {int quirks; } ;


 int DSI_QUIRK_VC_OCP_WIDTH ;
 int DSI_VC_CTRL (int) ;
 int DSI_VC_SOURCE_L4 ;
 int DSSDBG (char*,int) ;
 int DSSERR (char*,int) ;
 scalar_t__ FLD_GET (int ,int,int) ;
 int FLD_MOD (int ,int,int,int) ;
 int dsi_read_reg (struct dsi_data*,int ) ;
 int dsi_write_reg (struct dsi_data*,int ,int ) ;

__attribute__((used)) static void dsi_vc_initial_config(struct dsi_data *dsi, int channel)
{
 u32 r;

 DSSDBG("Initial config of virtual channel %d", channel);

 r = dsi_read_reg(dsi, DSI_VC_CTRL(channel));

 if (FLD_GET(r, 15, 15))
  DSSERR("VC(%d) busy when trying to configure it!\n",
    channel);

 r = FLD_MOD(r, 0, 1, 1);
 r = FLD_MOD(r, 0, 2, 2);
 r = FLD_MOD(r, 0, 3, 3);
 r = FLD_MOD(r, 0, 4, 4);
 r = FLD_MOD(r, 1, 7, 7);
 r = FLD_MOD(r, 1, 8, 8);
 r = FLD_MOD(r, 0, 9, 9);
 if (dsi->data->quirks & DSI_QUIRK_VC_OCP_WIDTH)
  r = FLD_MOD(r, 3, 11, 10);

 r = FLD_MOD(r, 4, 29, 27);
 r = FLD_MOD(r, 4, 23, 21);

 dsi_write_reg(dsi, DSI_VC_CTRL(channel), r);

 dsi->vc[channel].source = DSI_VC_SOURCE_L4;
}
