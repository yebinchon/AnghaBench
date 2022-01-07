
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;
struct TYPE_2__ {int default_dispclk; } ;
struct amdgpu_device {TYPE_1__ clock; } ;


 scalar_t__ amdgpu_connector_encoder_is_hbr2 (struct drm_connector*) ;

bool amdgpu_connector_is_dp12_capable(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct amdgpu_device *adev = dev->dev_private;

 if ((adev->clock.default_dispclk >= 53900) &&
     amdgpu_connector_encoder_is_hbr2(connector)) {
  return 1;
 }

 return 0;
}
