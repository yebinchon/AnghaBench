
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_display_mode {int clock; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;
struct TYPE_2__ {int max_pixel_clock; } ;
struct amdgpu_device {TYPE_1__ clock; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_CLOCK_HIGH ;
 int MODE_OK ;

__attribute__((used)) static enum drm_mode_status amdgpu_connector_vga_mode_valid(struct drm_connector *connector,
         struct drm_display_mode *mode)
{
 struct drm_device *dev = connector->dev;
 struct amdgpu_device *adev = dev->dev_private;



 if ((mode->clock / 10) > adev->clock.max_pixel_clock)
  return MODE_CLOCK_HIGH;

 return MODE_OK;
}
