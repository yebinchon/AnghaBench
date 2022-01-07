
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct nvif_object {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {struct nvif_object object; } ;
struct TYPE_5__ {TYPE_1__ device; } ;
struct TYPE_6__ {TYPE_2__ client; } ;


 scalar_t__ NV_PCRTC0_SIZE ;
 TYPE_3__* nouveau_drm (struct drm_device*) ;
 int nvif_wr32 (struct nvif_object*,int ,int ) ;

__attribute__((used)) static inline void NVWriteCRTC(struct drm_device *dev,
     int head, uint32_t reg, uint32_t val)
{
 struct nvif_object *device = &nouveau_drm(dev)->client.device.object;
 if (head)
  reg += NV_PCRTC0_SIZE;
 nvif_wr32(device, reg, val);
}
