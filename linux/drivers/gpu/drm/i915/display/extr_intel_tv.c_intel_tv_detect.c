
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_tv {int type; } ;
struct intel_load_detect_pipe {int dummy; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_2__ {int id; } ;
struct drm_connector {int status; int name; TYPE_1__ base; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int DRM_DEBUG_KMS (char*,int ,int ,int) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int connector_status_unknown ;
 struct intel_tv* intel_attached_tv (struct drm_connector*) ;
 int intel_get_load_detect_pipe (struct drm_connector*,int *,struct intel_load_detect_pipe*,struct drm_modeset_acquire_ctx*) ;
 int intel_release_load_detect_pipe (struct drm_connector*,struct intel_load_detect_pipe*,struct drm_modeset_acquire_ctx*) ;
 int intel_tv_detect_type (struct intel_tv*,struct drm_connector*) ;
 int intel_tv_find_better_format (struct drm_connector*) ;

__attribute__((used)) static int
intel_tv_detect(struct drm_connector *connector,
  struct drm_modeset_acquire_ctx *ctx,
  bool force)
{
 struct intel_tv *intel_tv = intel_attached_tv(connector);
 enum drm_connector_status status;
 int type;

 DRM_DEBUG_KMS("[CONNECTOR:%d:%s] force=%d\n",
        connector->base.id, connector->name,
        force);

 if (force) {
  struct intel_load_detect_pipe tmp;
  int ret;

  ret = intel_get_load_detect_pipe(connector, ((void*)0), &tmp, ctx);
  if (ret < 0)
   return ret;

  if (ret > 0) {
   type = intel_tv_detect_type(intel_tv, connector);
   intel_release_load_detect_pipe(connector, &tmp, ctx);
   status = type < 0 ?
    connector_status_disconnected :
    connector_status_connected;
  } else
   status = connector_status_unknown;

  if (status == connector_status_connected) {
   intel_tv->type = type;
   intel_tv_find_better_format(connector);
  }

  return status;
 } else
  return connector->status;
}
