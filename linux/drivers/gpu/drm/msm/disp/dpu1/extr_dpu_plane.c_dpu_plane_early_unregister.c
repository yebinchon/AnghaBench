
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int dummy; } ;
struct dpu_plane {int debugfs_root; } ;


 int debugfs_remove_recursive (int ) ;
 struct dpu_plane* to_dpu_plane (struct drm_plane*) ;

__attribute__((used)) static void dpu_plane_early_unregister(struct drm_plane *plane)
{
 struct dpu_plane *pdpu = to_dpu_plane(plane);

 debugfs_remove_recursive(pdpu->debugfs_root);
}
