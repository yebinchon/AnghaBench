
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dss_device {void** lcd_clk_source; void* dispc_clk_source; void** dsi_clk_source; int dss_clk; int dss_clk_rate; } ;


 void* DSS_CLK_SRC_FCK ;
 int DSS_CONTROL ;
 int DSS_REVISION ;
 int FLD_GET (int ,int,int) ;
 int REG_FLD_MOD (struct dss_device*,int ,int,int,int) ;
 int clk_get_rate (int ) ;
 int dss_read_reg (struct dss_device*,int ) ;
 int dss_runtime_get (struct dss_device*) ;
 int dss_runtime_put (struct dss_device*) ;
 int dss_select_dispc_clk_source (struct dss_device*,void*) ;
 int pr_info (char*,int ,int ) ;

__attribute__((used)) static int dss_probe_hardware(struct dss_device *dss)
{
 u32 rev;
 int r;

 r = dss_runtime_get(dss);
 if (r)
  return r;

 dss->dss_clk_rate = clk_get_rate(dss->dss_clk);


 REG_FLD_MOD(dss, DSS_CONTROL, 0, 0, 0);

 dss_select_dispc_clk_source(dss, DSS_CLK_SRC_FCK);






 dss->dsi_clk_source[0] = DSS_CLK_SRC_FCK;
 dss->dsi_clk_source[1] = DSS_CLK_SRC_FCK;
 dss->dispc_clk_source = DSS_CLK_SRC_FCK;
 dss->lcd_clk_source[0] = DSS_CLK_SRC_FCK;
 dss->lcd_clk_source[1] = DSS_CLK_SRC_FCK;

 rev = dss_read_reg(dss, DSS_REVISION);
 pr_info("OMAP DSS rev %d.%d\n", FLD_GET(rev, 7, 4), FLD_GET(rev, 3, 0));

 dss_runtime_put(dss);

 return 0;
}
