
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct intel_digital_connector_state {int broadcast_rgb; int force_audio; } ;
struct TYPE_2__ {int id; } ;
struct drm_property {int name; TYPE_1__ base; } ;
struct drm_i915_private {struct drm_property* broadcast_rgb_property; struct drm_property* force_audio_property; } ;
struct drm_device {int dummy; } ;
struct drm_connector_state {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;


 int DRM_DEBUG_ATOMIC (char*,int ,int ) ;
 int EINVAL ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 struct intel_digital_connector_state* to_intel_digital_connector_state (struct drm_connector_state const*) ;

int intel_digital_connector_atomic_get_property(struct drm_connector *connector,
      const struct drm_connector_state *state,
      struct drm_property *property,
      u64 *val)
{
 struct drm_device *dev = connector->dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_digital_connector_state *intel_conn_state =
  to_intel_digital_connector_state(state);

 if (property == dev_priv->force_audio_property)
  *val = intel_conn_state->force_audio;
 else if (property == dev_priv->broadcast_rgb_property)
  *val = intel_conn_state->broadcast_rgb;
 else {
  DRM_DEBUG_ATOMIC("Unknown property [PROP:%d:%s]\n",
     property->base.id, property->name);
  return -EINVAL;
 }

 return 0;
}
