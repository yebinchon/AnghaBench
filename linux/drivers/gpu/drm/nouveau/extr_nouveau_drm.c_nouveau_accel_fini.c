
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm {scalar_t__ fence; } ;
struct TYPE_2__ {int (* dtor ) (struct nouveau_drm*) ;} ;


 int nouveau_accel_ce_fini (struct nouveau_drm*) ;
 int nouveau_accel_gr_fini (struct nouveau_drm*) ;
 TYPE_1__* nouveau_fence (struct nouveau_drm*) ;
 int stub1 (struct nouveau_drm*) ;

__attribute__((used)) static void
nouveau_accel_fini(struct nouveau_drm *drm)
{
 nouveau_accel_ce_fini(drm);
 nouveau_accel_gr_fini(drm);
 if (drm->fence)
  nouveau_fence(drm)->dtor(drm);
}
