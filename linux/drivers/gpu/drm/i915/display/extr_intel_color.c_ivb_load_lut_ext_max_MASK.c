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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct intel_crtc *crtc)
{
	struct drm_i915_private *dev_priv = FUNC5(crtc->base.dev);
	enum pipe pipe = crtc->pipe;

	/* Program the max register to clamp values > 1.0. */
	FUNC0(FUNC4(pipe, 0), 1 << 16);
	FUNC0(FUNC4(pipe, 1), 1 << 16);
	FUNC0(FUNC4(pipe, 2), 1 << 16);

	/*
	 * Program the gc max 2 register to clamp values > 1.0.
	 * ToDo: Extend the ABI to be able to program values
	 * from 3.0 to 7.0
	 */
	if (FUNC1(dev_priv) >= 10 || FUNC2(dev_priv)) {
		FUNC0(FUNC3(pipe, 0), 1 << 16);
		FUNC0(FUNC3(pipe, 1), 1 << 16);
		FUNC0(FUNC3(pipe, 2), 1 << 16);
	}
}