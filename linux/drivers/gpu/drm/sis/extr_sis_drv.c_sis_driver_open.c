
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_file_private {int obj_list; } ;
struct drm_file {struct sis_file_private* driver_priv; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct sis_file_private* kmalloc (int,int ) ;

__attribute__((used)) static int sis_driver_open(struct drm_device *dev, struct drm_file *file)
{
 struct sis_file_private *file_priv;

 DRM_DEBUG_DRIVER("\n");
 file_priv = kmalloc(sizeof(*file_priv), GFP_KERNEL);
 if (!file_priv)
  return -ENOMEM;

 file->driver_priv = file_priv;

 INIT_LIST_HEAD(&file_priv->obj_list);

 return 0;
}
