
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvif_object {int dummy; } ;
struct TYPE_4__ {int chipset; } ;
struct TYPE_5__ {TYPE_1__ info; struct nvif_object object; } ;
struct TYPE_6__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_3__ client; } ;
struct drm_device {int dummy; } ;


 int NVReadVgaCrtc (struct drm_device*,int ,int ) ;
 int NV_CIO_CRE_44 ;
 int NV_PBUS_DEBUG_1 ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nvif_rd32 (struct nvif_object*,int ) ;

__attribute__((used)) static inline bool
nv_heads_tied(struct drm_device *dev)
{
 struct nvif_object *device = &nouveau_drm(dev)->client.device.object;
 struct nouveau_drm *drm = nouveau_drm(dev);

 if (drm->client.device.info.chipset == 0x11)
  return !!(nvif_rd32(device, NV_PBUS_DEBUG_1) & (1 << 28));

 return NVReadVgaCrtc(dev, 0, NV_CIO_CRE_44) & 0x4;
}
