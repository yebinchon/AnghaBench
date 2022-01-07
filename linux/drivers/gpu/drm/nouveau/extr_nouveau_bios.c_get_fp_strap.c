
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvif_object {int dummy; } ;
struct nvbios {int major_version; int* data; } ;
struct TYPE_4__ {scalar_t__ family; } ;
struct TYPE_6__ {TYPE_1__ info; struct nvif_object object; } ;
struct TYPE_5__ {TYPE_3__ device; } ;
struct nouveau_drm {TYPE_2__ client; } ;
struct drm_device {int dummy; } ;


 int NVReadVgaCrtc5758 (struct drm_device*,int ,int) ;
 scalar_t__ NV_DEVICE_INFO_V0_MAXWELL ;
 scalar_t__ NV_DEVICE_INFO_V0_TESLA ;
 int NV_PEXTDEV_BOOT_0 ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nvif_rd32 (struct nvif_object*,int) ;

__attribute__((used)) static int
get_fp_strap(struct drm_device *dev, struct nvbios *bios)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nvif_object *device = &drm->client.device.object;
 if (bios->major_version < 5 && bios->data[0x48] & 0x4)
  return NVReadVgaCrtc5758(dev, 0, 0xf) & 0xf;

 if (drm->client.device.info.family >= NV_DEVICE_INFO_V0_MAXWELL)
  return nvif_rd32(device, 0x001800) & 0x0000000f;
 else
 if (drm->client.device.info.family >= NV_DEVICE_INFO_V0_TESLA)
  return (nvif_rd32(device, NV_PEXTDEV_BOOT_0) >> 24) & 0xf;
 else
  return (nvif_rd32(device, NV_PEXTDEV_BOOT_0) >> 16) & 0xf;
}
