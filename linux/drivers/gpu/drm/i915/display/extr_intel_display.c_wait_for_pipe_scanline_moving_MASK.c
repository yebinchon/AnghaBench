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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct drm_i915_private*,int) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct intel_crtc *crtc, bool state)
{
	struct drm_i915_private *dev_priv = FUNC4(crtc->base.dev);
	enum pipe pipe = crtc->pipe;

	/* Wait for the display line to settle/start moving */
	if (FUNC5(FUNC3(dev_priv, pipe) == state, 100))
		FUNC0("pipe %c scanline %s wait timed out\n",
			  FUNC2(pipe), FUNC1(state));
}