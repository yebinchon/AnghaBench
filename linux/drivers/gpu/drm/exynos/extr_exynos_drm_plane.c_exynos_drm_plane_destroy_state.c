
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_plane_state {int dummy; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;


 int __drm_atomic_helper_plane_destroy_state (struct drm_plane_state*) ;
 int kfree (struct exynos_drm_plane_state*) ;
 struct exynos_drm_plane_state* to_exynos_plane_state (struct drm_plane_state*) ;

__attribute__((used)) static void exynos_drm_plane_destroy_state(struct drm_plane *plane,
        struct drm_plane_state *old_state)
{
 struct exynos_drm_plane_state *old_exynos_state =
     to_exynos_plane_state(old_state);
 __drm_atomic_helper_plane_destroy_state(old_state);
 kfree(old_exynos_state);
}
