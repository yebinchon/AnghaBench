#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct intel_link_m_n {int link_m; int link_n; int gmch_m; int gmch_n; int tu; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
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
 int TU_SIZE_MASK ; 
 int TU_SIZE_SHIFT ; 
 struct drm_i915_private* FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct drm_i915_private*,int) ; 

__attribute__((used)) static void FUNC16(struct intel_crtc *crtc,
					 enum transcoder transcoder,
					 struct intel_link_m_n *m_n,
					 struct intel_link_m_n *m2_n2)
{
	struct drm_i915_private *dev_priv = FUNC14(crtc->base.dev);
	enum pipe pipe = crtc->pipe;

	if (FUNC1(dev_priv) >= 5) {
		m_n->link_m = FUNC0(FUNC8(transcoder));
		m_n->link_n = FUNC0(FUNC11(transcoder));
		m_n->gmch_m = FUNC0(FUNC2(transcoder))
			& ~TU_SIZE_MASK;
		m_n->gmch_n = FUNC0(FUNC5(transcoder));
		m_n->tu = ((FUNC0(FUNC2(transcoder))
			    & TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;

		if (m2_n2 && FUNC15(dev_priv, transcoder)) {
			m2_n2->link_m = FUNC0(FUNC9(transcoder));
			m2_n2->link_n =	FUNC0(FUNC12(transcoder));
			m2_n2->gmch_m =	FUNC0(FUNC3(transcoder))
					& ~TU_SIZE_MASK;
			m2_n2->gmch_n =	FUNC0(FUNC6(transcoder));
			m2_n2->tu = ((FUNC0(FUNC3(transcoder))
					& TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
		}
	} else {
		m_n->link_m = FUNC0(FUNC10(pipe));
		m_n->link_n = FUNC0(FUNC13(pipe));
		m_n->gmch_m = FUNC0(FUNC4(pipe))
			& ~TU_SIZE_MASK;
		m_n->gmch_n = FUNC0(FUNC7(pipe));
		m_n->tu = ((FUNC0(FUNC4(pipe))
			    & TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
	}
}