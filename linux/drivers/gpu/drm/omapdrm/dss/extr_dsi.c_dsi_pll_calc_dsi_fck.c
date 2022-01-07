
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dss_pll_clock_info {int* mX; int clkdco; int* clkout; } ;
struct dsi_data {TYPE_1__* data; } ;
struct TYPE_2__ {unsigned long max_fck_freq; } ;


 int DIV_ROUND_UP (int,unsigned long) ;
 size_t HSDIV_DSI ;

__attribute__((used)) static void dsi_pll_calc_dsi_fck(struct dsi_data *dsi,
     struct dss_pll_clock_info *cinfo)
{
 unsigned long max_dsi_fck;

 max_dsi_fck = dsi->data->max_fck_freq;

 cinfo->mX[HSDIV_DSI] = DIV_ROUND_UP(cinfo->clkdco, max_dsi_fck);
 cinfo->clkout[HSDIV_DSI] = cinfo->clkdco / cinfo->mX[HSDIV_DSI];
}
