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
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int TU_SIZE_MASK ; 
 int TU_SIZE_SHIFT ; 
 struct drm_i915_private* FUNC5 (struct drm_device*) ; 

__attribute__((used)) static void FUNC6(struct intel_crtc *crtc,
					 struct intel_link_m_n *m_n)
{
	struct drm_device *dev = crtc->base.dev;
	struct drm_i915_private *dev_priv = FUNC5(dev);
	enum pipe pipe = crtc->pipe;

	m_n->link_m = FUNC0(FUNC3(pipe));
	m_n->link_n = FUNC0(FUNC4(pipe));
	m_n->gmch_m = FUNC0(FUNC1(pipe))
		& ~TU_SIZE_MASK;
	m_n->gmch_n = FUNC0(FUNC2(pipe));
	m_n->tu = ((FUNC0(FUNC1(pipe))
		    & TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
}