#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct intel_crtc {scalar_t__ cpu_fifo_underrun_disabled; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 struct intel_crtc* FUNC3 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int) ; 

void FUNC7(struct drm_i915_private *dev_priv,
					 enum pipe pipe)
{
	struct intel_crtc *crtc = FUNC3(dev_priv, pipe);

	/* We may be called too early in init, thanks BIOS! */
	if (crtc == NULL)
		return;

	/* GMCH can't disable fifo underruns, filter them. */
	if (FUNC1(dev_priv) &&
	    crtc->cpu_fifo_underrun_disabled)
		return;

	if (FUNC4(dev_priv, pipe, false)) {
		FUNC6(dev_priv, pipe);
		FUNC0("CPU pipe %c FIFO underrun\n",
			  FUNC5(pipe));
	}

	FUNC2(dev_priv);
}