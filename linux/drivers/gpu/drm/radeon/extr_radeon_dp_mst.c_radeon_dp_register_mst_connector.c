
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;


 int drm_connector_register (struct drm_connector*) ;
 int radeon_fb_add_connector (struct radeon_device*,struct drm_connector*) ;

__attribute__((used)) static void radeon_dp_register_mst_connector(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct radeon_device *rdev = dev->dev_private;

 radeon_fb_add_connector(rdev, connector);

 drm_connector_register(connector);
}
