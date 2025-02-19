
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct videomode {int hactive; } ;
struct TYPE_2__ {int* mX; } ;
struct dsi_data {int num_lanes_used; TYPE_1__ user_dsi_cinfo; int pix_fmt; struct videomode vm; } ;


 int DIV_ROUND_UP (int,int) ;
 int DSI_CLK_CTRL ;
 int DSI_CLK_TIMING ;
 int DSI_CTRL ;
 int DSI_DSIPHY_CFG0 ;
 int DSI_DSIPHY_CFG1 ;
 int DSI_VM_TIMING1 ;
 int DSI_VM_TIMING4 ;
 int DSI_VM_TIMING5 ;
 int DSI_VM_TIMING6 ;
 int DSI_VM_TIMING7 ;
 int DSSDBG (char*,int,int,int,int) ;
 int FLD_GET (int ,int,int) ;
 int FLD_MOD (int ,int,int,int) ;
 size_t HSDIV_DSI ;
 int dsi_compute_interleave_hs (int,int,int,int,int,int,int) ;
 int dsi_compute_interleave_lp (int,int,int,int,int) ;
 int dsi_get_pixel_size (int ) ;
 int dsi_read_reg (struct dsi_data*,int ) ;
 int dsi_write_reg (struct dsi_data*,int ,int ) ;

__attribute__((used)) static void dsi_config_cmd_mode_interleaving(struct dsi_data *dsi)
{
 int blanking_mode;
 int hfp_blanking_mode, hbp_blanking_mode, hsa_blanking_mode;
 int hsa, hfp, hbp, width_bytes, bllp, lp_clk_div;
 int ddr_clk_pre, ddr_clk_post, enter_hs_mode_lat, exit_hs_mode_lat;
 int tclk_trail, ths_exit, exiths_clk;
 bool ddr_alwon;
 const struct videomode *vm = &dsi->vm;
 int bpp = dsi_get_pixel_size(dsi->pix_fmt);
 int ndl = dsi->num_lanes_used - 1;
 int dsi_fclk_hsdiv = dsi->user_dsi_cinfo.mX[HSDIV_DSI] + 1;
 int hsa_interleave_hs = 0, hsa_interleave_lp = 0;
 int hfp_interleave_hs = 0, hfp_interleave_lp = 0;
 int hbp_interleave_hs = 0, hbp_interleave_lp = 0;
 int bl_interleave_hs = 0, bl_interleave_lp = 0;
 u32 r;

 r = dsi_read_reg(dsi, DSI_CTRL);
 blanking_mode = FLD_GET(r, 20, 20);
 hfp_blanking_mode = FLD_GET(r, 21, 21);
 hbp_blanking_mode = FLD_GET(r, 22, 22);
 hsa_blanking_mode = FLD_GET(r, 23, 23);

 r = dsi_read_reg(dsi, DSI_VM_TIMING1);
 hbp = FLD_GET(r, 11, 0);
 hfp = FLD_GET(r, 23, 12);
 hsa = FLD_GET(r, 31, 24);

 r = dsi_read_reg(dsi, DSI_CLK_TIMING);
 ddr_clk_post = FLD_GET(r, 7, 0);
 ddr_clk_pre = FLD_GET(r, 15, 8);

 r = dsi_read_reg(dsi, DSI_VM_TIMING7);
 exit_hs_mode_lat = FLD_GET(r, 15, 0);
 enter_hs_mode_lat = FLD_GET(r, 31, 16);

 r = dsi_read_reg(dsi, DSI_CLK_CTRL);
 lp_clk_div = FLD_GET(r, 12, 0);
 ddr_alwon = FLD_GET(r, 13, 13);

 r = dsi_read_reg(dsi, DSI_DSIPHY_CFG0);
 ths_exit = FLD_GET(r, 7, 0);

 r = dsi_read_reg(dsi, DSI_DSIPHY_CFG1);
 tclk_trail = FLD_GET(r, 15, 8);

 exiths_clk = ths_exit + tclk_trail;

 width_bytes = DIV_ROUND_UP(vm->hactive * bpp, 8);
 bllp = hbp + hfp + hsa + DIV_ROUND_UP(width_bytes + 6, ndl);

 if (!hsa_blanking_mode) {
  hsa_interleave_hs = dsi_compute_interleave_hs(hsa, ddr_alwon,
     enter_hs_mode_lat, exit_hs_mode_lat,
     exiths_clk, ddr_clk_pre, ddr_clk_post);
  hsa_interleave_lp = dsi_compute_interleave_lp(hsa,
     enter_hs_mode_lat, exit_hs_mode_lat,
     lp_clk_div, dsi_fclk_hsdiv);
 }

 if (!hfp_blanking_mode) {
  hfp_interleave_hs = dsi_compute_interleave_hs(hfp, ddr_alwon,
     enter_hs_mode_lat, exit_hs_mode_lat,
     exiths_clk, ddr_clk_pre, ddr_clk_post);
  hfp_interleave_lp = dsi_compute_interleave_lp(hfp,
     enter_hs_mode_lat, exit_hs_mode_lat,
     lp_clk_div, dsi_fclk_hsdiv);
 }

 if (!hbp_blanking_mode) {
  hbp_interleave_hs = dsi_compute_interleave_hs(hbp, ddr_alwon,
     enter_hs_mode_lat, exit_hs_mode_lat,
     exiths_clk, ddr_clk_pre, ddr_clk_post);

  hbp_interleave_lp = dsi_compute_interleave_lp(hbp,
     enter_hs_mode_lat, exit_hs_mode_lat,
     lp_clk_div, dsi_fclk_hsdiv);
 }

 if (!blanking_mode) {
  bl_interleave_hs = dsi_compute_interleave_hs(bllp, ddr_alwon,
     enter_hs_mode_lat, exit_hs_mode_lat,
     exiths_clk, ddr_clk_pre, ddr_clk_post);

  bl_interleave_lp = dsi_compute_interleave_lp(bllp,
     enter_hs_mode_lat, exit_hs_mode_lat,
     lp_clk_div, dsi_fclk_hsdiv);
 }

 DSSDBG("DSI HS interleaving(TXBYTECLKHS) HSA %d, HFP %d, HBP %d, BLLP %d\n",
  hsa_interleave_hs, hfp_interleave_hs, hbp_interleave_hs,
  bl_interleave_hs);

 DSSDBG("DSI LP interleaving(bytes) HSA %d, HFP %d, HBP %d, BLLP %d\n",
  hsa_interleave_lp, hfp_interleave_lp, hbp_interleave_lp,
  bl_interleave_lp);

 r = dsi_read_reg(dsi, DSI_VM_TIMING4);
 r = FLD_MOD(r, hsa_interleave_hs, 23, 16);
 r = FLD_MOD(r, hfp_interleave_hs, 15, 8);
 r = FLD_MOD(r, hbp_interleave_hs, 7, 0);
 dsi_write_reg(dsi, DSI_VM_TIMING4, r);

 r = dsi_read_reg(dsi, DSI_VM_TIMING5);
 r = FLD_MOD(r, hsa_interleave_lp, 23, 16);
 r = FLD_MOD(r, hfp_interleave_lp, 15, 8);
 r = FLD_MOD(r, hbp_interleave_lp, 7, 0);
 dsi_write_reg(dsi, DSI_VM_TIMING5, r);

 r = dsi_read_reg(dsi, DSI_VM_TIMING6);
 r = FLD_MOD(r, bl_interleave_hs, 31, 15);
 r = FLD_MOD(r, bl_interleave_lp, 16, 0);
 dsi_write_reg(dsi, DSI_VM_TIMING6, r);
}
