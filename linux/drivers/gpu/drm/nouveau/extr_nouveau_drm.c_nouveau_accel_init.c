
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvif_sclass {int oclass; } ;
struct TYPE_3__ {scalar_t__ family; } ;
struct nvif_device {TYPE_1__ info; int object; } ;
struct TYPE_4__ {struct nvif_device device; } ;
struct nouveau_drm {TYPE_2__ client; } ;


 int ENOSYS ;
 scalar_t__ NV_DEVICE_INFO_V0_VOLTA ;
 int NV_ERROR (struct nouveau_drm*,char*,int) ;



 int nouveau_accel_ce_init (struct nouveau_drm*) ;
 int nouveau_accel_fini (struct nouveau_drm*) ;
 int nouveau_accel_gr_init (struct nouveau_drm*) ;
 int nouveau_bo_move_init (struct nouveau_drm*) ;
 int nouveau_channels_init (struct nouveau_drm*) ;
 scalar_t__ nouveau_noaccel ;
 int nv04_fence_create (struct nouveau_drm*) ;
 int nv10_fence_create (struct nouveau_drm*) ;
 int nv17_fence_create (struct nouveau_drm*) ;
 int nv50_fence_create (struct nouveau_drm*) ;
 int nv84_fence_create (struct nouveau_drm*) ;
 int nvc0_fence_create (struct nouveau_drm*) ;
 int nvif_object_sclass_get (int *,struct nvif_sclass**) ;
 int nvif_object_sclass_put (struct nvif_sclass**) ;
 int nvif_user_init (struct nvif_device*) ;

__attribute__((used)) static void
nouveau_accel_init(struct nouveau_drm *drm)
{
 struct nvif_device *device = &drm->client.device;
 struct nvif_sclass *sclass;
 int ret, i, n;

 if (nouveau_noaccel)
  return;


 ret = nouveau_channels_init(drm);
 if (ret)
  return;




 ret = n = nvif_object_sclass_get(&device->object, &sclass);
 if (ret < 0)
  return;

 for (ret = -ENOSYS, i = 0; i < n; i++) {
  switch (sclass[i].oclass) {
  case 135:
   ret = nv04_fence_create(drm);
   break;
  case 134:
   ret = nv10_fence_create(drm);
   break;
  case 133:
  case 132:
   ret = nv17_fence_create(drm);
   break;
  case 131:
   ret = nv50_fence_create(drm);
   break;
  case 139:
   ret = nv84_fence_create(drm);
   break;
  case 140:
  case 138:
  case 137:
  case 136:
  case 130:
  case 128:
  case 129:
   ret = nvc0_fence_create(drm);
   break;
  default:
   break;
  }
 }

 nvif_object_sclass_put(&sclass);
 if (ret) {
  NV_ERROR(drm, "failed to initialise sync subsystem, %d\n", ret);
  nouveau_accel_fini(drm);
  return;
 }


 if (drm->client.device.info.family >= NV_DEVICE_INFO_V0_VOLTA) {
  ret = nvif_user_init(device);
  if (ret)
   return;
 }


 nouveau_accel_gr_init(drm);
 nouveau_accel_ce_init(drm);


 nouveau_bo_move_init(drm);
}
