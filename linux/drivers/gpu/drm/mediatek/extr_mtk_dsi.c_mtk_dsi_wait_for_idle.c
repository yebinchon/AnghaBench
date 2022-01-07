
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_dsi {scalar_t__ regs; } ;


 int DRM_WARN (char*) ;
 int DSI_BUSY ;
 scalar_t__ DSI_INTSTA ;
 int mtk_dsi_enable (struct mtk_dsi*) ;
 int mtk_dsi_reset_engine (struct mtk_dsi*) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;

__attribute__((used)) static void mtk_dsi_wait_for_idle(struct mtk_dsi *dsi)
{
 int ret;
 u32 val;

 ret = readl_poll_timeout(dsi->regs + DSI_INTSTA, val, !(val & DSI_BUSY),
     4, 2000000);
 if (ret) {
  DRM_WARN("polling dsi wait not busy timeout!\n");

  mtk_dsi_enable(dsi);
  mtk_dsi_reset_engine(dsi);
 }
}
