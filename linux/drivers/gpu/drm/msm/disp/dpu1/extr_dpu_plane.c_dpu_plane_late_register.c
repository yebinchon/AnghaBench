
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int dummy; } ;


 int _dpu_plane_init_debugfs (struct drm_plane*) ;

__attribute__((used)) static int dpu_plane_late_register(struct drm_plane *plane)
{
 return _dpu_plane_init_debugfs(plane);
}
