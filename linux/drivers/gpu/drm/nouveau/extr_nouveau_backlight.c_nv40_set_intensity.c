
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nvif_object {int dummy; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
struct nouveau_encoder {TYPE_2__ base; } ;
struct TYPE_8__ {struct nvif_object object; } ;
struct TYPE_9__ {TYPE_3__ device; } ;
struct nouveau_drm {TYPE_4__ client; } ;
struct TYPE_10__ {int brightness; } ;
struct backlight_device {TYPE_5__ props; } ;


 int NV40_PMC_BACKLIGHT ;
 int NV40_PMC_BACKLIGHT_MASK ;
 struct nouveau_encoder* bl_get_data (struct backlight_device*) ;
 struct nouveau_drm* nouveau_drm (int ) ;
 int nvif_rd32 (struct nvif_object*,int ) ;
 int nvif_wr32 (struct nvif_object*,int ,int) ;

__attribute__((used)) static int
nv40_set_intensity(struct backlight_device *bd)
{
 struct nouveau_encoder *nv_encoder = bl_get_data(bd);
 struct nouveau_drm *drm = nouveau_drm(nv_encoder->base.base.dev);
 struct nvif_object *device = &drm->client.device.object;
 int val = bd->props.brightness;
 int reg = nvif_rd32(device, NV40_PMC_BACKLIGHT);

 nvif_wr32(device, NV40_PMC_BACKLIGHT,
    (val << 16) | (reg & ~NV40_PMC_BACKLIGHT_MASK));

 return 0;
}
