
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi_stm {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DSI_WCR ;
 int WCR_DSIEN ;
 int dsi_set (struct dw_mipi_dsi_stm*,int ,int ) ;

__attribute__((used)) static void dw_mipi_dsi_phy_power_on(void *priv_data)
{
 struct dw_mipi_dsi_stm *dsi = priv_data;

 DRM_DEBUG_DRIVER("\n");


 dsi_set(dsi, DSI_WCR, WCR_DSIEN);
}
