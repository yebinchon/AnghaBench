
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {struct drm_connector* connector; } ;
struct drm_connector {int * eld; } ;


 int DRM_DEBUG_DRIVER (char*,int) ;
 int DRM_DEBUG_KMS (char*,int) ;
 int G4X_AUD_CNTL_ST ;
 int G4X_AUD_VID_DID ;
 int G4X_ELDV_DEVCL_DEVBLC ;
 int G4X_ELDV_DEVCTG ;
 int G4X_ELD_ADDR_MASK ;
 int G4X_HDMIW_HDMIEDID ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int const) ;
 int INTEL_AUDIO_DEVBLC ;
 int INTEL_AUDIO_DEVCL ;
 int drm_eld_size (int const*) ;
 scalar_t__ intel_eld_uptodate (struct drm_connector*,int ,int,int ,int,int ) ;
 int min (int,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void g4x_audio_codec_enable(struct intel_encoder *encoder,
       const struct intel_crtc_state *crtc_state,
       const struct drm_connector_state *conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct drm_connector *connector = conn_state->connector;
 const u8 *eld = connector->eld;
 u32 eldv;
 u32 tmp;
 int len, i;

 DRM_DEBUG_KMS("Enable audio codec, %u bytes ELD\n", drm_eld_size(eld));

 tmp = I915_READ(G4X_AUD_VID_DID);
 if (tmp == INTEL_AUDIO_DEVBLC || tmp == INTEL_AUDIO_DEVCL)
  eldv = G4X_ELDV_DEVCL_DEVBLC;
 else
  eldv = G4X_ELDV_DEVCTG;

 if (intel_eld_uptodate(connector,
          G4X_AUD_CNTL_ST, eldv,
          G4X_AUD_CNTL_ST, G4X_ELD_ADDR_MASK,
          G4X_HDMIW_HDMIEDID))
  return;

 tmp = I915_READ(G4X_AUD_CNTL_ST);
 tmp &= ~(eldv | G4X_ELD_ADDR_MASK);
 len = (tmp >> 9) & 0x1f;
 I915_WRITE(G4X_AUD_CNTL_ST, tmp);

 len = min(drm_eld_size(eld) / 4, len);
 DRM_DEBUG_DRIVER("ELD size %d\n", len);
 for (i = 0; i < len; i++)
  I915_WRITE(G4X_HDMIW_HDMIEDID, *((const u32 *)eld + i));

 tmp = I915_READ(G4X_AUD_CNTL_ST);
 tmp |= eldv;
 I915_WRITE(G4X_AUD_CNTL_ST, tmp);
}
