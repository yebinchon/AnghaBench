
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_drm_gem_obj {int base; } ;
struct drm_mode_create_dumb {int pitch; int width; int bpp; int size; int height; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DIV_ROUND_UP (int,int) ;
 scalar_t__ IS_ERR (struct mtk_drm_gem_obj*) ;
 int PTR_ERR (struct mtk_drm_gem_obj*) ;
 int drm_gem_handle_create (struct drm_file*,int *,int *) ;
 int drm_gem_object_put_unlocked (int *) ;
 struct mtk_drm_gem_obj* mtk_drm_gem_create (struct drm_device*,int,int) ;
 int mtk_drm_gem_free_object (int *) ;

int mtk_drm_gem_dumb_create(struct drm_file *file_priv, struct drm_device *dev,
       struct drm_mode_create_dumb *args)
{
 struct mtk_drm_gem_obj *mtk_gem;
 int ret;

 args->pitch = DIV_ROUND_UP(args->width * args->bpp, 8);
 args->size = args->pitch * args->height;

 mtk_gem = mtk_drm_gem_create(dev, args->size, 0);
 if (IS_ERR(mtk_gem))
  return PTR_ERR(mtk_gem);





 ret = drm_gem_handle_create(file_priv, &mtk_gem->base, &args->handle);
 if (ret)
  goto err_handle_create;


 drm_gem_object_put_unlocked(&mtk_gem->base);

 return 0;

err_handle_create:
 mtk_drm_gem_free_object(&mtk_gem->base);
 return ret;
}
