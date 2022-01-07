
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_pll_clock_info {int dummy; } ;
struct dsi_data {int pll; struct dss_pll_clock_info user_dsi_cinfo; } ;


 int DSSERR (char*) ;
 int dss_pll_set_config (int *,struct dss_pll_clock_info*) ;

__attribute__((used)) static int dsi_configure_dsi_clocks(struct dsi_data *dsi)
{
 struct dss_pll_clock_info cinfo;
 int r;

 cinfo = dsi->user_dsi_cinfo;

 r = dss_pll_set_config(&dsi->pll, &cinfo);
 if (r) {
  DSSERR("Failed to set dsi clocks\n");
  return r;
 }

 return 0;
}
