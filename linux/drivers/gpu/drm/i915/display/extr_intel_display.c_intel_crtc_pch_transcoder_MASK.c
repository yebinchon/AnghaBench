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
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int PIPE_A ; 
 struct drm_i915_private* FUNC1 (int /*<<< orphan*/ ) ; 

enum pipe FUNC2(struct intel_crtc *crtc)
{
	struct drm_i915_private *dev_priv = FUNC1(crtc->base.dev);

	if (FUNC0(dev_priv))
		return PIPE_A;
	else
		return crtc->pipe;
}