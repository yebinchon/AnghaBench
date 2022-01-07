
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct nvif_object {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {struct nvif_object object; } ;
struct TYPE_5__ {TYPE_1__ device; } ;
struct TYPE_6__ {TYPE_2__ client; } ;


 scalar_t__ NV_PRMCIO_CRX__COLOR ;
 scalar_t__ NV_PRMCIO_CR__COLOR ;
 int NV_PRMCIO_SIZE ;
 TYPE_3__* nouveau_drm (struct drm_device*) ;
 int nvif_wr08 (struct nvif_object*,scalar_t__,int ) ;

__attribute__((used)) static inline void NVWriteVgaCrtc(struct drm_device *dev,
     int head, uint8_t index, uint8_t value)
{
 struct nvif_object *device = &nouveau_drm(dev)->client.device.object;
 nvif_wr08(device, NV_PRMCIO_CRX__COLOR + head * NV_PRMCIO_SIZE, index);
 nvif_wr08(device, NV_PRMCIO_CR__COLOR + head * NV_PRMCIO_SIZE, value);
}
