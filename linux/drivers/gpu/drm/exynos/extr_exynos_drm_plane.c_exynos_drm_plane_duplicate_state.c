
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;
struct exynos_drm_plane_state {struct drm_plane_state base; } ;
struct drm_plane {int state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_duplicate_state (struct drm_plane*,struct drm_plane_state*) ;
 struct exynos_drm_plane_state* kzalloc (int,int ) ;
 struct exynos_drm_plane_state* to_exynos_plane_state (int ) ;

__attribute__((used)) static struct drm_plane_state *
exynos_drm_plane_duplicate_state(struct drm_plane *plane)
{
 struct exynos_drm_plane_state *exynos_state;
 struct exynos_drm_plane_state *copy;

 exynos_state = to_exynos_plane_state(plane->state);
 copy = kzalloc(sizeof(*exynos_state), GFP_KERNEL);
 if (!copy)
  return ((void*)0);

 __drm_atomic_helper_plane_duplicate_state(plane, &copy->base);
 return &copy->base;
}
