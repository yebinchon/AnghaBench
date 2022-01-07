
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_link_m_n {int link_m; int link_n; int gmch_m; int gmch_n; int tu; } ;
struct TYPE_2__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_READ (int ) ;
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
 int TU_SIZE_MASK ;
 int TU_SIZE_SHIFT ;
 struct drm_i915_private* to_i915 (int ) ;
 scalar_t__ transcoder_has_m2_n2 (struct drm_i915_private*,int) ;

__attribute__((used)) static void intel_cpu_transcoder_get_m_n(struct intel_crtc *crtc,
      enum transcoder transcoder,
      struct intel_link_m_n *m_n,
      struct intel_link_m_n *m2_n2)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;

 if (INTEL_GEN(dev_priv) >= 5) {
  m_n->link_m = I915_READ(PIPE_LINK_M1(transcoder));
  m_n->link_n = I915_READ(PIPE_LINK_N1(transcoder));
  m_n->gmch_m = I915_READ(PIPE_DATA_M1(transcoder))
   & ~TU_SIZE_MASK;
  m_n->gmch_n = I915_READ(PIPE_DATA_N1(transcoder));
  m_n->tu = ((I915_READ(PIPE_DATA_M1(transcoder))
       & TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;

  if (m2_n2 && transcoder_has_m2_n2(dev_priv, transcoder)) {
   m2_n2->link_m = I915_READ(PIPE_LINK_M2(transcoder));
   m2_n2->link_n = I915_READ(PIPE_LINK_N2(transcoder));
   m2_n2->gmch_m = I915_READ(PIPE_DATA_M2(transcoder))
     & ~TU_SIZE_MASK;
   m2_n2->gmch_n = I915_READ(PIPE_DATA_N2(transcoder));
   m2_n2->tu = ((I915_READ(PIPE_DATA_M2(transcoder))
     & TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
  }
 } else {
  m_n->link_m = I915_READ(PIPE_LINK_M_G4X(pipe));
  m_n->link_n = I915_READ(PIPE_LINK_N_G4X(pipe));
  m_n->gmch_m = I915_READ(PIPE_DATA_M_G4X(pipe))
   & ~TU_SIZE_MASK;
  m_n->gmch_n = I915_READ(PIPE_DATA_N_G4X(pipe));
  m_n->tu = ((I915_READ(PIPE_DATA_M_G4X(pipe))
       & TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
 }
}
