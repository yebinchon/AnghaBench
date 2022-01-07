
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi_rockchip {int lane_mbps; } ;


 unsigned int DIV_ROUND_UP (int,int) ;

__attribute__((used)) static inline unsigned int ns2bc(struct dw_mipi_dsi_rockchip *dsi, int ns)
{
 return DIV_ROUND_UP(ns * dsi->lane_mbps / 8, 1000);
}
