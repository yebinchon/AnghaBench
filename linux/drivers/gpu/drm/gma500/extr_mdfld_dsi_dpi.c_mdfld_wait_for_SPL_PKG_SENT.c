
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int DSI_INTR_STATE_SPL_PKG_SENT ;
 int MIPI_INTR_STAT_REG (int ) ;
 int REG_READ (int ) ;
 int udelay (int) ;

__attribute__((used)) static void mdfld_wait_for_SPL_PKG_SENT(struct drm_device *dev, u32 pipe)
{
 u32 intr_stat_reg = MIPI_INTR_STAT_REG(pipe);
 int timeout = 0;

 udelay(500);


 while ((timeout < 20000) && (!(REG_READ(intr_stat_reg)
     & DSI_INTR_STATE_SPL_PKG_SENT))) {
  udelay(100);
  timeout++;
 }

 if (timeout == 20000)
                DRM_ERROR("MIPI: SPL_PKT_SENT_INTERRUPT was not sent successfully!\n");
}
