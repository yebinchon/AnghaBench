#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_link_m_n {int gmch_m; int gmch_n; int link_m; int link_n; int /*<<< orphan*/  tu; } ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int cpu_transcoder; scalar_t__ has_drrs; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC15 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct drm_i915_private*,int) ; 

__attribute__((used)) static void FUNC18(const struct intel_crtc_state *crtc_state,
					 const struct intel_link_m_n *m_n,
					 const struct intel_link_m_n *m2_n2)
{
	struct intel_crtc *crtc = FUNC16(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC15(crtc->base.dev);
	enum pipe pipe = crtc->pipe;
	enum transcoder transcoder = crtc_state->cpu_transcoder;

	if (FUNC1(dev_priv) >= 5) {
		FUNC0(FUNC2(transcoder), FUNC14(m_n->tu) | m_n->gmch_m);
		FUNC0(FUNC5(transcoder), m_n->gmch_n);
		FUNC0(FUNC8(transcoder), m_n->link_m);
		FUNC0(FUNC11(transcoder), m_n->link_n);
		/*
		 *  M2_N2 registers are set only if DRRS is supported
		 * (to make sure the registers are not unnecessarily accessed).
		 */
		if (m2_n2 && crtc_state->has_drrs &&
		    FUNC17(dev_priv, transcoder)) {
			FUNC0(FUNC3(transcoder),
					FUNC14(m2_n2->tu) | m2_n2->gmch_m);
			FUNC0(FUNC6(transcoder), m2_n2->gmch_n);
			FUNC0(FUNC9(transcoder), m2_n2->link_m);
			FUNC0(FUNC12(transcoder), m2_n2->link_n);
		}
	} else {
		FUNC0(FUNC4(pipe), FUNC14(m_n->tu) | m_n->gmch_m);
		FUNC0(FUNC7(pipe), m_n->gmch_n);
		FUNC0(FUNC10(pipe), m_n->link_m);
		FUNC0(FUNC13(pipe), m_n->link_n);
	}
}