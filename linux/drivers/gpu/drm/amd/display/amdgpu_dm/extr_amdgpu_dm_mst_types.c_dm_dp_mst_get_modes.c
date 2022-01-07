
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct edid {int extensions; } ;
struct drm_connector {int dummy; } ;
struct dc_sink_init_data {int sink_signal; int link; } ;
struct dc_sink {scalar_t__ sink_signal; struct amdgpu_dm_connector* priv; } ;
struct amdgpu_dm_connector {struct edid* edid; int base; struct dc_sink* dc_sink; int dc_link; int port; TYPE_1__* mst_port; } ;
struct TYPE_2__ {int mst_mgr; } ;


 int EDID_LENGTH ;
 int SIGNAL_TYPE_DISPLAY_PORT_MST ;
 scalar_t__ SIGNAL_TYPE_VIRTUAL ;
 int amdgpu_dm_update_freesync_caps (struct drm_connector*,struct edid*) ;
 struct dc_sink* dc_link_add_remote_sink (int ,int *,int,struct dc_sink_init_data*) ;
 int dc_sink_release (struct dc_sink*) ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (int *,struct edid*) ;
 struct edid* drm_dp_mst_get_edid (struct drm_connector*,int *,int ) ;
 struct amdgpu_dm_connector* to_amdgpu_dm_connector (struct drm_connector*) ;

__attribute__((used)) static int dm_dp_mst_get_modes(struct drm_connector *connector)
{
 struct amdgpu_dm_connector *aconnector = to_amdgpu_dm_connector(connector);
 int ret = 0;

 if (!aconnector)
  return drm_add_edid_modes(connector, ((void*)0));

 if (!aconnector->edid) {
  struct edid *edid;
  edid = drm_dp_mst_get_edid(connector, &aconnector->mst_port->mst_mgr, aconnector->port);

  if (!edid) {
   drm_connector_update_edid_property(
    &aconnector->base,
    ((void*)0));
   return ret;
  }

  aconnector->edid = edid;
 }

 if (aconnector->dc_sink && aconnector->dc_sink->sink_signal == SIGNAL_TYPE_VIRTUAL) {
  dc_sink_release(aconnector->dc_sink);
  aconnector->dc_sink = ((void*)0);
 }

 if (!aconnector->dc_sink) {
  struct dc_sink *dc_sink;
  struct dc_sink_init_data init_params = {
    .link = aconnector->dc_link,
    .sink_signal = SIGNAL_TYPE_DISPLAY_PORT_MST };
  dc_sink = dc_link_add_remote_sink(
   aconnector->dc_link,
   (uint8_t *)aconnector->edid,
   (aconnector->edid->extensions + 1) * EDID_LENGTH,
   &init_params);

  dc_sink->priv = aconnector;

  aconnector->dc_sink = dc_sink;

  if (aconnector->dc_sink)
   amdgpu_dm_update_freesync_caps(
     connector, aconnector->edid);

 }

 drm_connector_update_edid_property(
     &aconnector->base, aconnector->edid);

 ret = drm_add_edid_modes(connector, aconnector->edid);

 return ret;
}
