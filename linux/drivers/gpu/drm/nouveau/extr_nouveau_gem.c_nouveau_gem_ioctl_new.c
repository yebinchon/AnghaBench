
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_cli {int dummy; } ;
struct TYPE_3__ {int base; } ;
struct nouveau_bo {TYPE_1__ bo; } ;
struct TYPE_4__ {int handle; int tile_flags; int tile_mode; int domain; int size; } ;
struct drm_nouveau_gem_new {TYPE_2__ info; int align; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_gem_handle_create (struct drm_file*,int *,int *) ;
 int drm_gem_handle_delete (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (int *) ;
 struct nouveau_cli* nouveau_cli (struct drm_file*) ;
 int nouveau_gem_info (struct drm_file*,int *,TYPE_2__*) ;
 int nouveau_gem_new (struct nouveau_cli*,int ,int ,int ,int ,int ,struct nouveau_bo**) ;

int
nouveau_gem_ioctl_new(struct drm_device *dev, void *data,
        struct drm_file *file_priv)
{
 struct nouveau_cli *cli = nouveau_cli(file_priv);
 struct drm_nouveau_gem_new *req = data;
 struct nouveau_bo *nvbo = ((void*)0);
 int ret = 0;

 ret = nouveau_gem_new(cli, req->info.size, req->align,
         req->info.domain, req->info.tile_mode,
         req->info.tile_flags, &nvbo);
 if (ret)
  return ret;

 ret = drm_gem_handle_create(file_priv, &nvbo->bo.base,
        &req->info.handle);
 if (ret == 0) {
  ret = nouveau_gem_info(file_priv, &nvbo->bo.base, &req->info);
  if (ret)
   drm_gem_handle_delete(file_priv, req->info.handle);
 }


 drm_gem_object_put_unlocked(&nvbo->bo.base);
 return ret;
}
