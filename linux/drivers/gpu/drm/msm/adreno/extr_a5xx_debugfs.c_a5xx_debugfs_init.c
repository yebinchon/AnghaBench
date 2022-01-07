
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;
struct drm_minor {int debugfs_root; struct drm_device* dev; } ;
struct drm_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_DEV_ERROR (int ,char*) ;
 int S_IWUGO ;
 int a5xx_debugfs_list ;
 int debugfs_create_file (char*,int ,int ,struct drm_device*,int *) ;
 int drm_debugfs_create_files (int ,int ,int ,struct drm_minor*) ;
 int reset_fops ;

int a5xx_debugfs_init(struct msm_gpu *gpu, struct drm_minor *minor)
{
 struct drm_device *dev;
 int ret;

 if (!minor)
  return 0;

 dev = minor->dev;

 ret = drm_debugfs_create_files(a5xx_debugfs_list,
   ARRAY_SIZE(a5xx_debugfs_list),
   minor->debugfs_root, minor);

 if (ret) {
  DRM_DEV_ERROR(dev->dev, "could not install a5xx_debugfs_list\n");
  return ret;
 }

 debugfs_create_file("reset", S_IWUGO, minor->debugfs_root, dev,
       &reset_fops);

 return 0;
}
