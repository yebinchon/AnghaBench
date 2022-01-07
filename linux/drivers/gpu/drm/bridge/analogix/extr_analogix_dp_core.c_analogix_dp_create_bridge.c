
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dev; } ;
struct drm_bridge {int * funcs; struct analogix_dp_device* driver_private; } ;
struct analogix_dp_device {int encoder; struct drm_bridge* bridge; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int analogix_dp_bridge_funcs ;
 struct drm_bridge* devm_kzalloc (int ,int,int ) ;
 int drm_bridge_attach (int ,struct drm_bridge*,int *) ;

__attribute__((used)) static int analogix_dp_create_bridge(struct drm_device *drm_dev,
         struct analogix_dp_device *dp)
{
 struct drm_bridge *bridge;
 int ret;

 bridge = devm_kzalloc(drm_dev->dev, sizeof(*bridge), GFP_KERNEL);
 if (!bridge) {
  DRM_ERROR("failed to allocate for drm bridge\n");
  return -ENOMEM;
 }

 dp->bridge = bridge;

 bridge->driver_private = dp;
 bridge->funcs = &analogix_dp_bridge_funcs;

 ret = drm_bridge_attach(dp->encoder, bridge, ((void*)0));
 if (ret) {
  DRM_ERROR("failed to attach drm bridge\n");
  return -EINVAL;
 }

 return 0;
}
