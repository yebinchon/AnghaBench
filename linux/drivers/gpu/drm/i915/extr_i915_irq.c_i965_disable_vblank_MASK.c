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
 int /*<<< orphan*/  PIPE_START_VBLANK_INTERRUPT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct drm_crtc*) ; 

void FUNC5(struct drm_crtc *crtc)
{
	struct drm_i915_private *dev_priv = FUNC3(crtc->dev);
	enum pipe pipe = FUNC4(crtc)->pipe;
	unsigned long irqflags;

	FUNC1(&dev_priv->irq_lock, irqflags);
	FUNC0(dev_priv, pipe,
			      PIPE_START_VBLANK_INTERRUPT_STATUS);
	FUNC2(&dev_priv->irq_lock, irqflags);
}