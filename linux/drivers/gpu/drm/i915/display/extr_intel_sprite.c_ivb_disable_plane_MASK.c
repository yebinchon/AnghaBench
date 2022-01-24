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
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {int pipe; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {TYPE_2__ uncore; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct intel_plane *plane,
		  const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC7(plane->base.dev);
	enum pipe pipe = plane->pipe;
	unsigned long irqflags;

	FUNC5(&dev_priv->uncore.lock, irqflags);

	FUNC0(FUNC2(pipe), 0);
	/* Disable the scaler */
	if (FUNC1(dev_priv))
		FUNC0(FUNC3(pipe), 0);
	FUNC0(FUNC4(pipe), 0);

	FUNC6(&dev_priv->uncore.lock, irqflags);
}