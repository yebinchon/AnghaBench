
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mdfld_dsi_pkg_sender {int mipi_gen_fifo_stat_reg; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int DRM_ERROR (char*,int) ;
 int EIO ;
 int REG_READ (int) ;
 int udelay (int) ;

__attribute__((used)) static inline int wait_for_gen_fifo_empty(struct mdfld_dsi_pkg_sender *sender,
      u32 mask)
{
 struct drm_device *dev = sender->dev;
 u32 gen_fifo_stat_reg = sender->mipi_gen_fifo_stat_reg;
 int retry = 0xffff;

 while (retry--) {
  if ((mask & REG_READ(gen_fifo_stat_reg)) == mask)
   return 0;
  udelay(100);
 }
 DRM_ERROR("fifo is NOT empty 0x%08x\n", REG_READ(gen_fifo_stat_reg));
 return -EIO;
}
