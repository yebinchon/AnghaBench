
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {struct drm_exynos_file_private* driver_priv; } ;
struct drm_exynos_file_private {int userptr_list; int event_list; int inuse_cmdlist; } ;
struct drm_device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;

int g2d_open(struct drm_device *drm_dev, struct drm_file *file)
{
 struct drm_exynos_file_private *file_priv = file->driver_priv;

 INIT_LIST_HEAD(&file_priv->inuse_cmdlist);
 INIT_LIST_HEAD(&file_priv->event_list);
 INIT_LIST_HEAD(&file_priv->userptr_list);

 return 0;
}
