
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {int* dsi_clk_source; } ;
typedef enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;


 int BUG () ;
 int BUG_ON (int) ;



 int DSS_CONTROL ;
 int REG_FLD_MOD (struct dss_device*,int ,int,int,int) ;

void dss_select_dsi_clk_source(struct dss_device *dss, int dsi_module,
          enum dss_clk_source clk_src)
{
 int b, pos;

 switch (clk_src) {
 case 130:
  b = 0;
  break;
 case 129:
  BUG_ON(dsi_module != 0);
  b = 1;
  break;
 case 128:
  BUG_ON(dsi_module != 1);
  b = 1;
  break;
 default:
  BUG();
  return;
 }

 pos = dsi_module == 0 ? 1 : 10;
 REG_FLD_MOD(dss, DSS_CONTROL, b, pos, pos);

 dss->dsi_clk_source[dsi_module] = clk_src;
}
