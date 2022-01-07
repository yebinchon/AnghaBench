
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int object; } ;
struct TYPE_5__ {TYPE_1__ device; } ;
struct nouveau_drm {TYPE_3__* debugfs; TYPE_2__ client; } ;
struct TYPE_6__ {int ctrl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NVIF_CLASS_CONTROL ;
 TYPE_3__* kzalloc (int,int ) ;
 int nvif_object_init (int *,int ,int ,int *,int ,int *) ;

int
nouveau_debugfs_init(struct nouveau_drm *drm)
{
 int ret;

 drm->debugfs = kzalloc(sizeof(*drm->debugfs), GFP_KERNEL);
 if (!drm->debugfs)
  return -ENOMEM;

 ret = nvif_object_init(&drm->client.device.object, 0,
          NVIF_CLASS_CONTROL, ((void*)0), 0,
          &drm->debugfs->ctrl);
 if (ret)
  return ret;

 return 0;
}
