
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_link_m_n {int gmch_m; int gmch_n; int link_m; int link_n; int tu; } ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {int cpu_transcoder; scalar_t__ has_drrs; TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int PIPE_DATA_M1 (int) ;
 int PIPE_DATA_M2 (int) ;
 int PIPE_DATA_M_G4X (int) ;
 int PIPE_DATA_N1 (int) ;
 int PIPE_DATA_N2 (int) ;
 int PIPE_DATA_N_G4X (int) ;
 int PIPE_LINK_M1 (int) ;
 int PIPE_LINK_M2 (int) ;
 int PIPE_LINK_M_G4X (int) ;
 int PIPE_LINK_N1 (int) ;
 int PIPE_LINK_N2 (int) ;
 int PIPE_LINK_N_G4X (int) ;
 int TU_SIZE (int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;
 scalar_t__ transcoder_has_m2_n2 (struct drm_i915_private*,int) ;

__attribute__((used)) static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
      const struct intel_link_m_n *m_n,
      const struct intel_link_m_n *m2_n2)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;
 enum transcoder transcoder = crtc_state->cpu_transcoder;

 if (INTEL_GEN(dev_priv) >= 5) {
  I915_WRITE(PIPE_DATA_M1(transcoder), TU_SIZE(m_n->tu) | m_n->gmch_m);
  I915_WRITE(PIPE_DATA_N1(transcoder), m_n->gmch_n);
  I915_WRITE(PIPE_LINK_M1(transcoder), m_n->link_m);
  I915_WRITE(PIPE_LINK_N1(transcoder), m_n->link_n);




  if (m2_n2 && crtc_state->has_drrs &&
      transcoder_has_m2_n2(dev_priv, transcoder)) {
   I915_WRITE(PIPE_DATA_M2(transcoder),
     TU_SIZE(m2_n2->tu) | m2_n2->gmch_m);
   I915_WRITE(PIPE_DATA_N2(transcoder), m2_n2->gmch_n);
   I915_WRITE(PIPE_LINK_M2(transcoder), m2_n2->link_m);
   I915_WRITE(PIPE_LINK_N2(transcoder), m2_n2->link_n);
  }
 } else {
  I915_WRITE(PIPE_DATA_M_G4X(pipe), TU_SIZE(m_n->tu) | m_n->gmch_m);
  I915_WRITE(PIPE_DATA_N_G4X(pipe), m_n->gmch_n);
  I915_WRITE(PIPE_LINK_M_G4X(pipe), m_n->link_m);
  I915_WRITE(PIPE_LINK_N_G4X(pipe), m_n->link_n);
 }
}
