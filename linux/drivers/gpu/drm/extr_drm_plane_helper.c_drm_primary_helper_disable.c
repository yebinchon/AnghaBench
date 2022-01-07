
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int dummy; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int drm_primary_helper_disable(struct drm_plane *plane,
          struct drm_modeset_acquire_ctx *ctx)
{
 return -EINVAL;
}
