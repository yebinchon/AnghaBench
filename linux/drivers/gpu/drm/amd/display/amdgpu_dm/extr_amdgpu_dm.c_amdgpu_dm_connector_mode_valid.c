
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_display_mode {int flags; int clock; int hdisplay; int vdisplay; } ;
struct drm_connector {TYPE_1__* dev; } ;
struct dc_stream_state {int dummy; } ;
struct dc_sink {int dummy; } ;
struct TYPE_5__ {scalar_t__ force; } ;
struct amdgpu_dm_connector {struct dc_sink* dc_sink; int dc_em_sink; TYPE_2__ base; } ;
struct TYPE_6__ {int dc; } ;
struct amdgpu_device {TYPE_3__ dm; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;
struct TYPE_4__ {struct amdgpu_device* dev_private; } ;


 int DC_OK ;
 int DRM_DEBUG_KMS (char*,int ,int ,int ,int) ;
 int DRM_ERROR (char*) ;
 scalar_t__ DRM_FORCE_UNSPECIFIED ;
 int DRM_MODE_FLAG_DBLSCAN ;
 int DRM_MODE_FLAG_INTERLACE ;
 int MODE_ERROR ;
 int MODE_OK ;
 struct dc_stream_state* create_stream_for_sink (struct amdgpu_dm_connector*,struct drm_display_mode*,int *,int *) ;
 int dc_stream_release (struct dc_stream_state*) ;
 int dc_validate_stream (int ,struct dc_stream_state*) ;
 int handle_edid_mgmt (struct amdgpu_dm_connector*) ;
 struct amdgpu_dm_connector* to_amdgpu_dm_connector (struct drm_connector*) ;

enum drm_mode_status amdgpu_dm_connector_mode_valid(struct drm_connector *connector,
       struct drm_display_mode *mode)
{
 int result = MODE_ERROR;
 struct dc_sink *dc_sink;
 struct amdgpu_device *adev = connector->dev->dev_private;

 struct dc_stream_state *stream;
 struct amdgpu_dm_connector *aconnector = to_amdgpu_dm_connector(connector);
 enum dc_status dc_result = DC_OK;

 if ((mode->flags & DRM_MODE_FLAG_INTERLACE) ||
   (mode->flags & DRM_MODE_FLAG_DBLSCAN))
  return result;





 if (aconnector->base.force != DRM_FORCE_UNSPECIFIED &&
  !aconnector->dc_em_sink)
  handle_edid_mgmt(aconnector);

 dc_sink = to_amdgpu_dm_connector(connector)->dc_sink;

 if (dc_sink == ((void*)0)) {
  DRM_ERROR("dc_sink is NULL!\n");
  goto fail;
 }

 stream = create_stream_for_sink(aconnector, mode, ((void*)0), ((void*)0));
 if (stream == ((void*)0)) {
  DRM_ERROR("Failed to create stream for sink!\n");
  goto fail;
 }

 dc_result = dc_validate_stream(adev->dm.dc, stream);

 if (dc_result == DC_OK)
  result = MODE_OK;
 else
  DRM_DEBUG_KMS("Mode %dx%d (clk %d) failed DC validation with error %d\n",
         mode->vdisplay,
         mode->hdisplay,
         mode->clock,
         dc_result);

 dc_stream_release(stream);

fail:

 return result;
}
