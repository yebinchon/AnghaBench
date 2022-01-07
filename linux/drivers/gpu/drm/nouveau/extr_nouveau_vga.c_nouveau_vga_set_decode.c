
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvif_object {int dummy; } ;
struct TYPE_4__ {scalar_t__ family; int chipset; } ;
struct TYPE_5__ {TYPE_1__ info; struct nvif_object object; } ;
struct TYPE_6__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_3__ client; } ;


 scalar_t__ NV_DEVICE_INFO_V0_CURIE ;
 unsigned int VGA_RSRC_LEGACY_IO ;
 unsigned int VGA_RSRC_LEGACY_MEM ;
 unsigned int VGA_RSRC_NORMAL_IO ;
 unsigned int VGA_RSRC_NORMAL_MEM ;
 struct nouveau_drm* nouveau_drm (void*) ;
 int nvif_wr32 (struct nvif_object*,int,int) ;

__attribute__((used)) static unsigned int
nouveau_vga_set_decode(void *priv, bool state)
{
 struct nouveau_drm *drm = nouveau_drm(priv);
 struct nvif_object *device = &drm->client.device.object;

 if (drm->client.device.info.family == NV_DEVICE_INFO_V0_CURIE &&
     drm->client.device.info.chipset >= 0x4c)
  nvif_wr32(device, 0x088060, state);
 else
 if (drm->client.device.info.chipset >= 0x40)
  nvif_wr32(device, 0x088054, state);
 else
  nvif_wr32(device, 0x001854, state);

 if (state)
  return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
         VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
 else
  return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
}
