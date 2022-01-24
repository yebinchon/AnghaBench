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
struct drm_i915_private {int /*<<< orphan*/  irq_lock; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_2__ {int pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN8_PIPE_VBLANK ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct drm_crtc*) ; 

int FUNC7(struct drm_crtc *crtc)
{
	struct drm_i915_private *dev_priv = FUNC5(crtc->dev);
	enum pipe pipe = FUNC6(crtc)->pipe;
	unsigned long irqflags;

	FUNC3(&dev_priv->irq_lock, irqflags);
	FUNC1(dev_priv, pipe, GEN8_PIPE_VBLANK);
	FUNC4(&dev_priv->irq_lock, irqflags);

	/* Even if there is no DMC, frame counter can get stuck when
	 * PSR is active as no frames are generated, so check only for PSR.
	 */
	if (FUNC0(dev_priv))
		FUNC2(crtc);

	return 0;
}