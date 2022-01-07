
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int copy; } ;
struct nouveau_drm {int cechan; TYPE_1__ ttm; } ;


 int nouveau_channel_del (int *) ;
 int nouveau_channel_idle (int ) ;
 int nvif_object_fini (int *) ;

__attribute__((used)) static void
nouveau_accel_ce_fini(struct nouveau_drm *drm)
{
 nouveau_channel_idle(drm->cechan);
 nvif_object_fini(&drm->ttm.copy);
 nouveau_channel_del(&drm->cechan);
}
