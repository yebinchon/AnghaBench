
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* state; struct drm_device* dev; } ;
struct intel_connector {TYPE_3__ base; } ;
struct TYPE_5__ {int connection_mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_8__ {int pipe; } ;
struct TYPE_6__ {int crtc; } ;


 int INVALID_PIPE ;
 int WARN_ON (int) ;
 int drm_modeset_is_locked (int *) ;
 TYPE_4__* to_intel_crtc (int ) ;

enum pipe intel_connector_get_pipe(struct intel_connector *connector)
{
 struct drm_device *dev = connector->base.dev;

 WARN_ON(!drm_modeset_is_locked(&dev->mode_config.connection_mutex));

 if (!connector->base.state->crtc)
  return INVALID_PIPE;

 return to_intel_crtc(connector->base.state->crtc)->pipe;
}
