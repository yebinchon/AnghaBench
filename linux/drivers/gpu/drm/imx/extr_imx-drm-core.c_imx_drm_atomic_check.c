
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_atomic_state {int dummy; } ;


 int drm_atomic_helper_check (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_check_modeset (struct drm_device*,struct drm_atomic_state*) ;
 int ipu_planes_assign_pre (struct drm_device*,struct drm_atomic_state*) ;

__attribute__((used)) static int imx_drm_atomic_check(struct drm_device *dev,
    struct drm_atomic_state *state)
{
 int ret;

 ret = drm_atomic_helper_check(dev, state);
 if (ret)
  return ret;





 ret = drm_atomic_helper_check_modeset(dev, state);
 if (ret)
  return ret;


 ret = ipu_planes_assign_pre(dev, state);
 if (ret)
  return ret;

 return ret;
}
