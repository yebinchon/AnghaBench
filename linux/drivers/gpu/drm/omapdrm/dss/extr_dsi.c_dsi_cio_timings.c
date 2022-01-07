
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dsi_data {TYPE_1__* data; } ;
struct TYPE_2__ {int quirks; } ;


 int DSI_DSIPHY_CFG0 ;
 int DSI_DSIPHY_CFG1 ;
 int DSI_DSIPHY_CFG2 ;
 int DSI_QUIRK_PHY_DCC ;
 int DSSDBG (char*,int,int ,...) ;
 int FLD_MOD (int,int,int,int) ;
 int ddr2ns (struct dsi_data*,int) ;
 int dsi_read_reg (struct dsi_data*,int ) ;
 int dsi_write_reg (struct dsi_data*,int ,int) ;
 int ns2ddr (struct dsi_data*,int) ;

__attribute__((used)) static void dsi_cio_timings(struct dsi_data *dsi)
{
 u32 r;
 u32 ths_prepare, ths_prepare_ths_zero, ths_trail, ths_exit;
 u32 tlpx_half, tclk_trail, tclk_zero;
 u32 tclk_prepare;






 ths_prepare = ns2ddr(dsi, 70) + 2;


 ths_prepare_ths_zero = ns2ddr(dsi, 175) + 2;


 ths_trail = ns2ddr(dsi, 60) + 5;


 ths_exit = ns2ddr(dsi, 145);


 tlpx_half = ns2ddr(dsi, 25);


 tclk_trail = ns2ddr(dsi, 60) + 2;


 tclk_prepare = ns2ddr(dsi, 65);


 tclk_zero = ns2ddr(dsi, 260);

 DSSDBG("ths_prepare %u (%uns), ths_prepare_ths_zero %u (%uns)\n",
  ths_prepare, ddr2ns(dsi, ths_prepare),
  ths_prepare_ths_zero, ddr2ns(dsi, ths_prepare_ths_zero));
 DSSDBG("ths_trail %u (%uns), ths_exit %u (%uns)\n",
   ths_trail, ddr2ns(dsi, ths_trail),
   ths_exit, ddr2ns(dsi, ths_exit));

 DSSDBG("tlpx_half %u (%uns), tclk_trail %u (%uns), "
   "tclk_zero %u (%uns)\n",
   tlpx_half, ddr2ns(dsi, tlpx_half),
   tclk_trail, ddr2ns(dsi, tclk_trail),
   tclk_zero, ddr2ns(dsi, tclk_zero));
 DSSDBG("tclk_prepare %u (%uns)\n",
   tclk_prepare, ddr2ns(dsi, tclk_prepare));



 r = dsi_read_reg(dsi, DSI_DSIPHY_CFG0);
 r = FLD_MOD(r, ths_prepare, 31, 24);
 r = FLD_MOD(r, ths_prepare_ths_zero, 23, 16);
 r = FLD_MOD(r, ths_trail, 15, 8);
 r = FLD_MOD(r, ths_exit, 7, 0);
 dsi_write_reg(dsi, DSI_DSIPHY_CFG0, r);

 r = dsi_read_reg(dsi, DSI_DSIPHY_CFG1);
 r = FLD_MOD(r, tlpx_half, 20, 16);
 r = FLD_MOD(r, tclk_trail, 15, 8);
 r = FLD_MOD(r, tclk_zero, 7, 0);

 if (dsi->data->quirks & DSI_QUIRK_PHY_DCC) {
  r = FLD_MOD(r, 0, 21, 21);
  r = FLD_MOD(r, 1, 22, 22);
  r = FLD_MOD(r, 1, 23, 23);
 }

 dsi_write_reg(dsi, DSI_DSIPHY_CFG1, r);

 r = dsi_read_reg(dsi, DSI_DSIPHY_CFG2);
 r = FLD_MOD(r, tclk_prepare, 7, 0);
 dsi_write_reg(dsi, DSI_DSIPHY_CFG2, r);
}
