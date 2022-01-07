
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;
 int G4X_AUD_CNTL_ST ;
 int G4X_AUD_VID_DID ;
 int G4X_ELDV_DEVCL_DEVBLC ;
 int G4X_ELDV_DEVCTG ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int INTEL_AUDIO_DEVBLC ;
 int INTEL_AUDIO_DEVCL ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void g4x_audio_codec_disable(struct intel_encoder *encoder,
        const struct intel_crtc_state *old_crtc_state,
        const struct drm_connector_state *old_conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 u32 eldv, tmp;

 DRM_DEBUG_KMS("Disable audio codec\n");

 tmp = I915_READ(G4X_AUD_VID_DID);
 if (tmp == INTEL_AUDIO_DEVBLC || tmp == INTEL_AUDIO_DEVCL)
  eldv = G4X_ELDV_DEVCL_DEVBLC;
 else
  eldv = G4X_ELDV_DEVCTG;


 tmp = I915_READ(G4X_AUD_CNTL_ST);
 tmp &= ~eldv;
 I915_WRITE(G4X_AUD_CNTL_ST, tmp);
}
