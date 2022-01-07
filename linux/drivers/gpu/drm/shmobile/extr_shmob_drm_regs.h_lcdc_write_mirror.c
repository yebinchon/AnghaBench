
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct shmob_drm_device {scalar_t__ mmio; } ;


 scalar_t__ LCDC_MIRROR_OFFSET ;
 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void lcdc_write_mirror(struct shmob_drm_device *sdev, u32 reg,
         u32 data)
{
 iowrite32(data, sdev->mmio + reg + LCDC_MIRROR_OFFSET);
}
