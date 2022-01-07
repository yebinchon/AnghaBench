
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct msm_dsi_host {int src_clk_rate; int byte_clk_rate; unsigned int esc_clk_rate; int format; } ;


 int DBG (char*,unsigned int,int) ;
 unsigned int DIV_ROUND_UP (unsigned long,unsigned int) ;
 int EINVAL ;
 int do_div (int,int) ;
 int dsi_calc_pclk (struct msm_dsi_host*,int) ;
 int dsi_get_bpp (int ) ;
 scalar_t__ dsi_get_pclk_rate (struct msm_dsi_host*,int) ;

int dsi_calc_clk_rate_v2(struct msm_dsi_host *msm_host, bool is_dual_dsi)
{
 u32 bpp = dsi_get_bpp(msm_host->format);
 u64 pclk_bpp;
 unsigned int esc_mhz, esc_div;
 unsigned long byte_mhz;

 dsi_calc_pclk(msm_host, is_dual_dsi);

 pclk_bpp = (u64)dsi_get_pclk_rate(msm_host, is_dual_dsi) * bpp;
 do_div(pclk_bpp, 8);
 msm_host->src_clk_rate = pclk_bpp;
 byte_mhz = msm_host->byte_clk_rate / 1000000;

 for (esc_mhz = 20; esc_mhz >= 5; esc_mhz--) {
  esc_div = DIV_ROUND_UP(byte_mhz, esc_mhz);







  if (esc_div >= 1 && esc_div <= 16)
   break;
 }

 if (esc_mhz < 5)
  return -EINVAL;

 msm_host->esc_clk_rate = msm_host->byte_clk_rate / esc_div;

 DBG("esc=%d, src=%d", msm_host->esc_clk_rate,
  msm_host->src_clk_rate);

 return 0;
}
