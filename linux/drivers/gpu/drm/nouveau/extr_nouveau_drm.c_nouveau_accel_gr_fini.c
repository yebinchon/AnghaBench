
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_drm {int channel; int nvsw; int notify; int ntfy; } ;


 int nouveau_channel_del (int *) ;
 int nouveau_channel_idle (int ) ;
 int nvif_object_fini (int *) ;
 int nvkm_gpuobj_del (int *) ;

__attribute__((used)) static void
nouveau_accel_gr_fini(struct nouveau_drm *drm)
{
 nouveau_channel_idle(drm->channel);
 nvif_object_fini(&drm->ntfy);
 nvkm_gpuobj_del(&drm->notify);
 nvif_object_fini(&drm->nvsw);
 nouveau_channel_del(&drm->channel);
}
