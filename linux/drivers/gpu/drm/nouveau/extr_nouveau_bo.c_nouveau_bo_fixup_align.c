
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {scalar_t__ family; int chipset; } ;
struct nvif_device {TYPE_3__ info; } ;
struct TYPE_5__ {struct nvif_device device; } ;
struct nouveau_drm {TYPE_2__ client; } ;
struct TYPE_4__ {int bdev; } ;
struct nouveau_bo {int mode; int page; TYPE_1__ bo; } ;


 scalar_t__ NV_DEVICE_INFO_V0_TESLA ;
 int PAGE_SIZE ;
 int max (int,int) ;
 struct nouveau_drm* nouveau_bdev (int ) ;
 int roundup_64 (int ,int) ;

__attribute__((used)) static void
nouveau_bo_fixup_align(struct nouveau_bo *nvbo, u32 flags,
         int *align, u64 *size)
{
 struct nouveau_drm *drm = nouveau_bdev(nvbo->bo.bdev);
 struct nvif_device *device = &drm->client.device;

 if (device->info.family < NV_DEVICE_INFO_V0_TESLA) {
  if (nvbo->mode) {
   if (device->info.chipset >= 0x40) {
    *align = 65536;
    *size = roundup_64(*size, 64 * nvbo->mode);

   } else if (device->info.chipset >= 0x30) {
    *align = 32768;
    *size = roundup_64(*size, 64 * nvbo->mode);

   } else if (device->info.chipset >= 0x20) {
    *align = 16384;
    *size = roundup_64(*size, 64 * nvbo->mode);

   } else if (device->info.chipset >= 0x10) {
    *align = 16384;
    *size = roundup_64(*size, 32 * nvbo->mode);
   }
  }
 } else {
  *size = roundup_64(*size, (1 << nvbo->page));
  *align = max((1 << nvbo->page), *align);
 }

 *size = roundup_64(*size, PAGE_SIZE);
}
