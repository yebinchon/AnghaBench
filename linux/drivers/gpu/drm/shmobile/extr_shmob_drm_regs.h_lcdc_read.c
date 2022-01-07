
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct shmob_drm_device {scalar_t__ mmio; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 lcdc_read(struct shmob_drm_device *sdev, u32 reg)
{
 return ioread32(sdev->mmio + reg);
}
