
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int DRM_MODE_DPMS_OFF ;
 int intel_crt_set_dpms (struct intel_encoder*,struct intel_crtc_state const*,int ) ;

__attribute__((used)) static void intel_disable_crt(struct intel_encoder *encoder,
         const struct intel_crtc_state *old_crtc_state,
         const struct drm_connector_state *old_conn_state)
{
 intel_crt_set_dpms(encoder, old_crtc_state, DRM_MODE_DPMS_OFF);
}
