
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {int debugfs_root; } ;


 int ARRAY_SIZE (int ) ;
 int drm_debugfs_create_files (int ,int ,int ,struct drm_minor*) ;
 int v3d_debugfs_list ;

int
v3d_debugfs_init(struct drm_minor *minor)
{
 return drm_debugfs_create_files(v3d_debugfs_list,
     ARRAY_SIZE(v3d_debugfs_list),
     minor->debugfs_root, minor);
}
