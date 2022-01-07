
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;
struct TYPE_4__ {TYPE_1__* rfbdev; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
struct TYPE_3__ {int helper; } ;


 int DRM_ERROR (char*) ;
 int drm_connector_register (struct drm_connector*) ;
 int drm_fb_helper_add_one_connector (int *,struct drm_connector*) ;

__attribute__((used)) static void dm_dp_mst_register_connector(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct amdgpu_device *adev = dev->dev_private;

 if (adev->mode_info.rfbdev)
  drm_fb_helper_add_one_connector(&adev->mode_info.rfbdev->helper, connector);
 else
  DRM_ERROR("adev->mode_info.rfbdev is NULL\n");

 drm_connector_register(connector);
}
