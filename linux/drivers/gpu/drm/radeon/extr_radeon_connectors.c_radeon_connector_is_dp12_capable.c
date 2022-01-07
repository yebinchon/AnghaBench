
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int default_dispclk; } ;
struct radeon_device {TYPE_1__ clock; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;


 scalar_t__ ASIC_IS_DCE5 (struct radeon_device*) ;
 scalar_t__ radeon_connector_encoder_is_hbr2 (struct drm_connector*) ;

bool radeon_connector_is_dp12_capable(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct radeon_device *rdev = dev->dev_private;

 if (ASIC_IS_DCE5(rdev) &&
     (rdev->clock.default_dispclk >= 53900) &&
     radeon_connector_encoder_is_hbr2(connector)) {
  return 1;
 }

 return 0;
}
