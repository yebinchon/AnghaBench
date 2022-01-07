
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ family; } ;
struct TYPE_7__ {TYPE_2__ info; } ;
struct TYPE_8__ {TYPE_3__ device; } ;
struct nouveau_drm {TYPE_4__ client; } ;
struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_5__ {int device; } ;


 scalar_t__ NV_DEVICE_INFO_V0_CURIE ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

__attribute__((used)) static inline bool
nv_two_reg_pll(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 const int impl = dev->pdev->device & 0x0ff0;

 if (impl == 0x0310 || impl == 0x0340 || drm->client.device.info.family >= NV_DEVICE_INFO_V0_CURIE)
  return 1;
 return 0;
}
