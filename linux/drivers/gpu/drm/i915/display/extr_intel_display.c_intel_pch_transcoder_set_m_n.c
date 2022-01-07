
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_link_m_n {int gmch_m; int gmch_n; int link_m; int link_n; int tu; } ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_WRITE (int ,int) ;
 int PCH_TRANS_DATA_M1 (int) ;
 int PCH_TRANS_DATA_N1 (int) ;
 int PCH_TRANS_LINK_M1 (int) ;
 int PCH_TRANS_LINK_N1 (int) ;
 int TU_SIZE (int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void intel_pch_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
      const struct intel_link_m_n *m_n)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;

 I915_WRITE(PCH_TRANS_DATA_M1(pipe), TU_SIZE(m_n->tu) | m_n->gmch_m);
 I915_WRITE(PCH_TRANS_DATA_N1(pipe), m_n->gmch_n);
 I915_WRITE(PCH_TRANS_LINK_M1(pipe), m_n->link_m);
 I915_WRITE(PCH_TRANS_LINK_N1(pipe), m_n->link_n);
}
