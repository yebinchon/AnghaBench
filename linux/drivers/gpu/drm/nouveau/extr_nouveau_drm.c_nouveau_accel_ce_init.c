
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ family; int chipset; } ;
struct nvif_device {TYPE_1__ info; } ;
struct TYPE_4__ {struct nvif_device device; } ;
struct nouveau_drm {int cechan; TYPE_2__ client; } ;


 scalar_t__ NV_DEVICE_INFO_V0_KEPLER ;
 int NV_ERROR (struct nouveau_drm*,char*,int) ;
 int NvDmaFB ;
 int NvDmaTT ;
 int nouveau_channel_new (struct nouveau_drm*,struct nvif_device*,int ,int ,int,int *) ;
 int nvif_fifo_runlist_ce (struct nvif_device*) ;

__attribute__((used)) static void
nouveau_accel_ce_init(struct nouveau_drm *drm)
{
 struct nvif_device *device = &drm->client.device;
 int ret = 0;




 if (device->info.family >= NV_DEVICE_INFO_V0_KEPLER) {
  ret = nouveau_channel_new(drm, device,
       nvif_fifo_runlist_ce(device), 0,
       1, &drm->cechan);
 } else
 if (device->info.chipset >= 0xa3 &&
     device->info.chipset != 0xaa &&
     device->info.chipset != 0xac) {





  ret = nouveau_channel_new(drm, device, NvDmaFB, NvDmaTT, 0,
       &drm->cechan);
 }

 if (ret)
  NV_ERROR(drm, "failed to create ce channel, %d\n", ret);
}
