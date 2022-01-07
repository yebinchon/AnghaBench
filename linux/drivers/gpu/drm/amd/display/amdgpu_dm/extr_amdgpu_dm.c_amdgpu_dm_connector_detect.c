
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {int dummy; } ;
struct TYPE_2__ {scalar_t__ force; } ;
struct amdgpu_dm_connector {TYPE_1__ base; int * dc_sink; int fake_enable; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 scalar_t__ DRM_FORCE_ON ;
 scalar_t__ DRM_FORCE_UNSPECIFIED ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 struct amdgpu_dm_connector* to_amdgpu_dm_connector (struct drm_connector*) ;

__attribute__((used)) static enum drm_connector_status
amdgpu_dm_connector_detect(struct drm_connector *connector, bool force)
{
 bool connected;
 struct amdgpu_dm_connector *aconnector = to_amdgpu_dm_connector(connector);
 if (aconnector->base.force == DRM_FORCE_UNSPECIFIED &&
     !aconnector->fake_enable)
  connected = (aconnector->dc_sink != ((void*)0));
 else
  connected = (aconnector->base.force == DRM_FORCE_ON);

 return (connected ? connector_status_connected :
   connector_status_disconnected);
}
