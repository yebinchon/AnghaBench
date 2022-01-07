
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int chipset; } ;
struct nvif_device {TYPE_2__ info; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {struct nvif_device device; } ;
struct TYPE_6__ {TYPE_1__ client; } ;


 TYPE_3__* nouveau_drm (struct drm_device*) ;
 int nv04_overlay_init (struct drm_device*) ;
 int nv10_overlay_init (struct drm_device*) ;

void
nouveau_overlay_init(struct drm_device *device)
{
 struct nvif_device *dev = &nouveau_drm(device)->client.device;
 if (dev->info.chipset < 0x10)
  nv04_overlay_init(device);
 else if (dev->info.chipset <= 0x40)
  nv10_overlay_init(device);
}
