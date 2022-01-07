
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvif_object {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {struct nvif_object object; } ;
struct TYPE_5__ {TYPE_1__ device; } ;
struct TYPE_6__ {TYPE_2__ client; } ;


 scalar_t__ NV_PRMCIO_ARX ;
 scalar_t__ NV_PRMCIO_INP0__COLOR ;
 int NV_PRMCIO_SIZE ;
 TYPE_3__* nouveau_drm (struct drm_device*) ;
 int nvif_rd08 (struct nvif_object*,scalar_t__) ;
 int nvif_wr08 (struct nvif_object*,scalar_t__,int) ;

__attribute__((used)) static inline void NVSetEnablePalette(struct drm_device *dev, int head, bool enable)
{
 struct nvif_object *device = &nouveau_drm(dev)->client.device.object;
 nvif_rd08(device, NV_PRMCIO_INP0__COLOR + head * NV_PRMCIO_SIZE);
 nvif_wr08(device, NV_PRMCIO_ARX + head * NV_PRMCIO_SIZE, enable ? 0 : 0x20);
}
