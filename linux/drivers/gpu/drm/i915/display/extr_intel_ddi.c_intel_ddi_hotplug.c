
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_encoder {int base; } ;
struct TYPE_4__ {int is_mst; } ;
struct intel_digital_port {TYPE_2__ dp; } ;
struct TYPE_3__ {scalar_t__ connector_type; } ;
struct intel_connector {TYPE_1__ base; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
typedef enum intel_hotplug_state { ____Placeholder_intel_hotplug_state } intel_hotplug_state ;


 scalar_t__ DRM_MODE_CONNECTOR_HDMIA ;
 int EDEADLK ;
 int INTEL_HOTPLUG_RETRY ;
 int INTEL_HOTPLUG_UNCHANGED ;
 int WARN (int,char*,int) ;
 int drm_modeset_acquire_fini (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_acquire_init (struct drm_modeset_acquire_ctx*,int ) ;
 int drm_modeset_backoff (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_drop_locks (struct drm_modeset_acquire_ctx*) ;
 struct intel_digital_port* enc_to_dig_port (int *) ;
 int intel_dp_retrain_link (struct intel_encoder*,struct drm_modeset_acquire_ctx*) ;
 int intel_encoder_hotplug (struct intel_encoder*,struct intel_connector*,int) ;
 int intel_hdmi_reset_link (struct intel_encoder*,struct drm_modeset_acquire_ctx*) ;

__attribute__((used)) static enum intel_hotplug_state
intel_ddi_hotplug(struct intel_encoder *encoder,
    struct intel_connector *connector,
    bool irq_received)
{
 struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
 struct drm_modeset_acquire_ctx ctx;
 enum intel_hotplug_state state;
 int ret;

 state = intel_encoder_hotplug(encoder, connector, irq_received);

 drm_modeset_acquire_init(&ctx, 0);

 for (;;) {
  if (connector->base.connector_type == DRM_MODE_CONNECTOR_HDMIA)
   ret = intel_hdmi_reset_link(encoder, &ctx);
  else
   ret = intel_dp_retrain_link(encoder, &ctx);

  if (ret == -EDEADLK) {
   drm_modeset_backoff(&ctx);
   continue;
  }

  break;
 }

 drm_modeset_drop_locks(&ctx);
 drm_modeset_acquire_fini(&ctx);
 WARN(ret, "Acquiring modeset locks failed with %i\n", ret);
 if (state == INTEL_HOTPLUG_UNCHANGED && irq_received &&
     !dig_port->dp.is_mst)
  state = INTEL_HOTPLUG_RETRY;

 return state;
}
