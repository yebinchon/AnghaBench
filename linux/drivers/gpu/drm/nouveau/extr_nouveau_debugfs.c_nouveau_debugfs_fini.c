
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_drm {TYPE_2__* debugfs; } ;
struct TYPE_3__ {scalar_t__ priv; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;


 int kfree (TYPE_2__*) ;
 int nvif_object_fini (TYPE_1__*) ;

void
nouveau_debugfs_fini(struct nouveau_drm *drm)
{
 if (drm->debugfs && drm->debugfs->ctrl.priv)
  nvif_object_fini(&drm->debugfs->ctrl);

 kfree(drm->debugfs);
 drm->debugfs = ((void*)0);
}
