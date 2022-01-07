
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {int dev; int debugfs_root; } ;


 int ARRAY_SIZE (int ) ;
 int DRIVER_NAME ;
 int DRM_ERROR (char*,int ) ;
 int DRM_INFO (char*,int ) ;
 int S_IRUGO ;
 int S_IWUSR ;
 int debugfs_create_file (char*,int,int ,int ,int *) ;
 int drm_debugfs_create_files (int ,int ,int ,struct drm_minor*) ;
 int sti_drm_dbg_list ;
 int sti_drm_fps_fops ;

__attribute__((used)) static int sti_drm_dbg_init(struct drm_minor *minor)
{
 int ret;

 ret = drm_debugfs_create_files(sti_drm_dbg_list,
           ARRAY_SIZE(sti_drm_dbg_list),
           minor->debugfs_root, minor);
 if (ret)
  goto err;

 debugfs_create_file("fps_show", S_IRUGO | S_IWUSR, minor->debugfs_root,
       minor->dev, &sti_drm_fps_fops);

 DRM_INFO("%s: debugfs installed\n", DRIVER_NAME);
 return 0;
err:
 DRM_ERROR("%s: cannot install debugfs\n", DRIVER_NAME);
 return ret;
}
