
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {int byte_clk; int esc_clk; int src_clk; int pixel_clk; } ;


 int clk_disable_unprepare (int ) ;

void dsi_link_clk_disable_v2(struct msm_dsi_host *msm_host)
{
 clk_disable_unprepare(msm_host->pixel_clk);
 clk_disable_unprepare(msm_host->src_clk);
 clk_disable_unprepare(msm_host->esc_clk);
 clk_disable_unprepare(msm_host->byte_clk);
}
