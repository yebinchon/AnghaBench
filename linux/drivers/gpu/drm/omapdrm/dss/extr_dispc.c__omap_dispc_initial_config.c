
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dispc_device {TYPE_1__* feat; int core_clk_rate; } ;
struct TYPE_2__ {scalar_t__ mstandby_workaround; scalar_t__ has_gamma_table; } ;


 int DISPC_CONFIG ;
 int DISPC_DIVISOR ;
 int DISPC_MSTANDBY_CTRL ;
 int FEAT_CORE_CLK_DIV ;
 int FEAT_FUNCGATED ;
 int FEAT_MFLAG ;
 int FLD_MOD (int ,int,int,int) ;
 int OMAP_DSS_LOAD_FRAME_ONLY ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int,int) ;
 int dispc_configure_burst_sizes (struct dispc_device*) ;
 int dispc_fclk_rate (struct dispc_device*) ;
 scalar_t__ dispc_has_feature (struct dispc_device*,int ) ;
 int dispc_init_fifos (struct dispc_device*) ;
 int dispc_init_mflag (struct dispc_device*) ;
 int dispc_ovl_enable_zorder_planes (struct dispc_device*) ;
 int dispc_read_reg (struct dispc_device*,int ) ;
 int dispc_set_loadmode (struct dispc_device*,int ) ;
 int dispc_setup_color_conv_coef (struct dispc_device*) ;
 int dispc_write_reg (struct dispc_device*,int ,int ) ;

__attribute__((used)) static void _omap_dispc_initial_config(struct dispc_device *dispc)
{
 u32 l;


 if (dispc_has_feature(dispc, FEAT_CORE_CLK_DIV)) {
  l = dispc_read_reg(dispc, DISPC_DIVISOR);

  l = FLD_MOD(l, 1, 0, 0);
  l = FLD_MOD(l, 1, 23, 16);
  dispc_write_reg(dispc, DISPC_DIVISOR, l);

  dispc->core_clk_rate = dispc_fclk_rate(dispc);
 }


 if (dispc->feat->has_gamma_table)
  REG_FLD_MOD(dispc, DISPC_CONFIG, 1, 3, 3);





 if (dispc_has_feature(dispc, FEAT_FUNCGATED) ||
     dispc->feat->has_gamma_table)
  REG_FLD_MOD(dispc, DISPC_CONFIG, 1, 9, 9);

 dispc_setup_color_conv_coef(dispc);

 dispc_set_loadmode(dispc, OMAP_DSS_LOAD_FRAME_ONLY);

 dispc_init_fifos(dispc);

 dispc_configure_burst_sizes(dispc);

 dispc_ovl_enable_zorder_planes(dispc);

 if (dispc->feat->mstandby_workaround)
  REG_FLD_MOD(dispc, DISPC_MSTANDBY_CTRL, 1, 0, 0);

 if (dispc_has_feature(dispc, FEAT_MFLAG))
  dispc_init_mflag(dispc);
}
