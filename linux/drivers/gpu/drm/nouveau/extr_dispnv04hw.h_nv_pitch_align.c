
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ family; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
struct TYPE_6__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_3__ client; } ;
struct drm_device {int dummy; } ;


 scalar_t__ NV_DEVICE_INFO_V0_TNT ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

__attribute__((used)) static inline uint32_t
nv_pitch_align(struct drm_device *dev, uint32_t width, int bpp)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 int mask;

 if (bpp == 15)
  bpp = 16;
 if (bpp == 24)
  bpp = 8;


 if (drm->client.device.info.family == NV_DEVICE_INFO_V0_TNT)
  mask = 128 / bpp - 1;
 else
  mask = 512 / bpp - 1;

 return (width + mask) & ~mask;
}
