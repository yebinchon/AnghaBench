
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_connector {int status; struct drm_device* dev; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ hpd; } ;
struct amdgpu_connector {TYPE_1__ hpd; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 scalar_t__ AMDGPU_HPD_NONE ;
 scalar_t__ amdgpu_display_hpd_sense (struct amdgpu_device*,scalar_t__) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;

__attribute__((used)) static bool
amdgpu_connector_check_hpd_status_unchanged(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);
 enum drm_connector_status status;

 if (amdgpu_connector->hpd.hpd != AMDGPU_HPD_NONE) {
  if (amdgpu_display_hpd_sense(adev, amdgpu_connector->hpd.hpd))
   status = connector_status_connected;
  else
   status = connector_status_disconnected;
  if (connector->status == status)
   return 1;
 }

 return 0;
}
