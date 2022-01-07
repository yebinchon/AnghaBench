
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct nvif_object {int dummy; } ;
struct TYPE_4__ {scalar_t__ family; } ;
struct TYPE_5__ {TYPE_1__ info; struct nvif_object object; } ;
struct TYPE_6__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_3__ client; } ;
struct drm_device {int dummy; } ;


 scalar_t__ NV_DEVICE_INFO_V0_CURIE ;
 scalar_t__ NV_PRMVIO_SIZE ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nvif_wr08 (struct nvif_object*,int ,int ) ;

__attribute__((used)) static inline void NVWritePRMVIO(struct drm_device *dev,
     int head, uint32_t reg, uint8_t value)
{
 struct nvif_object *device = &nouveau_drm(dev)->client.device.object;
 struct nouveau_drm *drm = nouveau_drm(dev);



 if (head && drm->client.device.info.family == NV_DEVICE_INFO_V0_CURIE)
  reg += NV_PRMVIO_SIZE;

 nvif_wr08(device, reg, value);
}
