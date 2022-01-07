
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_connector {int base; TYPE_1__* dev; } ;
struct dc_link {int connector_signal; scalar_t__ type; } ;
struct TYPE_4__ {int aux; } ;
struct amdgpu_dm_connector {struct drm_connector* i2c; TYPE_2__ dm_dp_aux; int * dc_sink; int * dc_em_sink; struct dc_link* dc_link; } ;
struct amdgpu_display_manager {int * backlight_dev; } ;
struct amdgpu_device {struct amdgpu_display_manager dm; } ;
struct TYPE_3__ {struct amdgpu_device* dev_private; } ;


 int SIGNAL_TYPE_EDP ;
 int SIGNAL_TYPE_LVDS ;
 int backlight_device_unregister (int *) ;
 scalar_t__ dc_connection_none ;
 int dc_sink_release (int *) ;
 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_connector_unregister (struct drm_connector*) ;
 int drm_dp_cec_unregister_connector (int *) ;
 int i2c_del_adapter (int *) ;
 int kfree (struct drm_connector*) ;
 struct amdgpu_dm_connector* to_amdgpu_dm_connector (struct drm_connector*) ;

__attribute__((used)) static void amdgpu_dm_connector_destroy(struct drm_connector *connector)
{
 struct amdgpu_dm_connector *aconnector = to_amdgpu_dm_connector(connector);
 const struct dc_link *link = aconnector->dc_link;
 struct amdgpu_device *adev = connector->dev->dev_private;
 struct amdgpu_display_manager *dm = &adev->dm;
 if (aconnector->dc_em_sink)
  dc_sink_release(aconnector->dc_em_sink);
 aconnector->dc_em_sink = ((void*)0);
 if (aconnector->dc_sink)
  dc_sink_release(aconnector->dc_sink);
 aconnector->dc_sink = ((void*)0);

 drm_dp_cec_unregister_connector(&aconnector->dm_dp_aux.aux);
 drm_connector_unregister(connector);
 drm_connector_cleanup(connector);
 if (aconnector->i2c) {
  i2c_del_adapter(&aconnector->i2c->base);
  kfree(aconnector->i2c);
 }

 kfree(connector);
}
