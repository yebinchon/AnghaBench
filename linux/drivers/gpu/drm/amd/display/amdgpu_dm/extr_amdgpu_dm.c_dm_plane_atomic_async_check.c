
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;
struct drm_plane {scalar_t__ type; } ;


 scalar_t__ DRM_PLANE_TYPE_CURSOR ;
 int EINVAL ;

__attribute__((used)) static int dm_plane_atomic_async_check(struct drm_plane *plane,
           struct drm_plane_state *new_plane_state)
{

 if (plane->type != DRM_PLANE_TYPE_CURSOR)
  return -EINVAL;

 return 0;
}
