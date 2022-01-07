
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {struct drm_exynos_file_private* driver_priv; } ;
struct drm_exynos_file_private {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int g2d_open (struct drm_device*,struct drm_file*) ;
 int kfree (struct drm_exynos_file_private*) ;
 struct drm_exynos_file_private* kzalloc (int,int ) ;

__attribute__((used)) static int exynos_drm_open(struct drm_device *dev, struct drm_file *file)
{
 struct drm_exynos_file_private *file_priv;
 int ret;

 file_priv = kzalloc(sizeof(*file_priv), GFP_KERNEL);
 if (!file_priv)
  return -ENOMEM;

 file->driver_priv = file_priv;
 ret = g2d_open(dev, file);
 if (ret)
  goto err_file_priv_free;

 return ret;

err_file_priv_free:
 kfree(file_priv);
 file->driver_priv = ((void*)0);
 return ret;
}
