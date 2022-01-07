
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct edid {int dummy; } ;
struct TYPE_10__ {int mutex; } ;
struct drm_device {TYPE_5__ mode_config; } ;
struct drm_connector {scalar_t__ force; struct drm_device* dev; } ;
struct TYPE_8__ {scalar_t__ length; scalar_t__ raw_edid; } ;
struct dc_sink {scalar_t__ sink_signal; TYPE_3__ dc_edid; } ;
struct TYPE_9__ {int aux; } ;
struct TYPE_6__ {int mst_state; } ;
struct amdgpu_dm_connector {struct edid* edid; struct dc_sink* dc_sink; scalar_t__ num_modes; TYPE_4__ dm_dp_aux; int connector_id; struct dc_sink* dc_em_sink; struct drm_connector base; TYPE_2__* dc_link; TYPE_1__ mst_mgr; } ;
struct TYPE_7__ {struct dc_sink* local_sink; } ;


 int DRM_DEBUG_DRIVER (char*,int ,...) ;
 scalar_t__ DRM_FORCE_UNSPECIFIED ;
 scalar_t__ SIGNAL_TYPE_DISPLAY_PORT_MST ;
 int amdgpu_dm_update_freesync_caps (struct drm_connector*,struct edid*) ;
 int dc_sink_release (struct dc_sink*) ;
 int dc_sink_retain (struct dc_sink*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 int drm_dp_cec_set_edid (int *,struct edid*) ;
 int drm_dp_cec_unset_edid (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
amdgpu_dm_update_connector_after_detect(struct amdgpu_dm_connector *aconnector)
{
 struct drm_connector *connector = &aconnector->base;
 struct drm_device *dev = connector->dev;
 struct dc_sink *sink;


 if (aconnector->mst_mgr.mst_state == 1)
  return;


 sink = aconnector->dc_link->local_sink;
 if (sink)
  dc_sink_retain(sink);






 if (aconnector->base.force != DRM_FORCE_UNSPECIFIED
   && aconnector->dc_em_sink) {





  mutex_lock(&dev->mode_config.mutex);

  if (sink) {
   if (aconnector->dc_sink) {
    amdgpu_dm_update_freesync_caps(connector, ((void*)0));






    dc_sink_release(aconnector->dc_sink);
   }
   aconnector->dc_sink = sink;
   dc_sink_retain(aconnector->dc_sink);
   amdgpu_dm_update_freesync_caps(connector,
     aconnector->edid);
  } else {
   amdgpu_dm_update_freesync_caps(connector, ((void*)0));
   if (!aconnector->dc_sink) {
    aconnector->dc_sink = aconnector->dc_em_sink;
    dc_sink_retain(aconnector->dc_sink);
   }
  }

  mutex_unlock(&dev->mode_config.mutex);

  if (sink)
   dc_sink_release(sink);
  return;
 }





 if (sink && sink->sink_signal == SIGNAL_TYPE_DISPLAY_PORT_MST) {
  dc_sink_release(sink);
  return;
 }

 if (aconnector->dc_sink == sink) {




  DRM_DEBUG_DRIVER("DCHPD: connector_id=%d: dc_sink didn't change.\n",
    aconnector->connector_id);
  if (sink)
   dc_sink_release(sink);
  return;
 }

 DRM_DEBUG_DRIVER("DCHPD: connector_id=%d: Old sink=%p New sink=%p\n",
  aconnector->connector_id, aconnector->dc_sink, sink);

 mutex_lock(&dev->mode_config.mutex);





 if (sink) {




  if (aconnector->dc_sink)
   amdgpu_dm_update_freesync_caps(connector, ((void*)0));

  aconnector->dc_sink = sink;
  dc_sink_retain(aconnector->dc_sink);
  if (sink->dc_edid.length == 0) {
   aconnector->edid = ((void*)0);
   drm_dp_cec_unset_edid(&aconnector->dm_dp_aux.aux);
  } else {
   aconnector->edid =
    (struct edid *) sink->dc_edid.raw_edid;


   drm_connector_update_edid_property(connector,
     aconnector->edid);
   drm_dp_cec_set_edid(&aconnector->dm_dp_aux.aux,
         aconnector->edid);
  }
  amdgpu_dm_update_freesync_caps(connector, aconnector->edid);

 } else {
  drm_dp_cec_unset_edid(&aconnector->dm_dp_aux.aux);
  amdgpu_dm_update_freesync_caps(connector, ((void*)0));
  drm_connector_update_edid_property(connector, ((void*)0));
  aconnector->num_modes = 0;
  dc_sink_release(aconnector->dc_sink);
  aconnector->dc_sink = ((void*)0);
  aconnector->edid = ((void*)0);
 }

 mutex_unlock(&dev->mode_config.mutex);

 if (sink)
  dc_sink_release(sink);
}
