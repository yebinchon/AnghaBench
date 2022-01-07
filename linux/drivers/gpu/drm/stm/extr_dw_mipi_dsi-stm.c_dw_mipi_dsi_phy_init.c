
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_mipi_dsi_stm {scalar_t__ base; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 scalar_t__ DSI_WISR ;
 int DSI_WRPCR ;
 int SLEEP_US ;
 int TIMEOUT_US ;
 int WISR_PLLLS ;
 int WISR_RRS ;
 int WRPCR_BGREN ;
 int WRPCR_PLLEN ;
 int WRPCR_REGEN ;
 int dsi_set (struct dw_mipi_dsi_stm*,int ,int) ;
 int readl_poll_timeout (scalar_t__,int,int,int ,int ) ;

__attribute__((used)) static int dw_mipi_dsi_phy_init(void *priv_data)
{
 struct dw_mipi_dsi_stm *dsi = priv_data;
 u32 val;
 int ret;


 dsi_set(dsi, DSI_WRPCR, WRPCR_REGEN | WRPCR_BGREN);
 ret = readl_poll_timeout(dsi->base + DSI_WISR, val, val & WISR_RRS,
     SLEEP_US, TIMEOUT_US);
 if (ret)
  DRM_DEBUG_DRIVER("!TIMEOUT! waiting REGU, let's continue\n");


 dsi_set(dsi, DSI_WRPCR, WRPCR_PLLEN);
 ret = readl_poll_timeout(dsi->base + DSI_WISR, val, val & WISR_PLLLS,
     SLEEP_US, TIMEOUT_US);
 if (ret)
  DRM_DEBUG_DRIVER("!TIMEOUT! waiting PLL, let's continue\n");

 return 0;
}
