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
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {int /*<<< orphan*/  irq_lock; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_2__ {int pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (struct drm_crtc*) ; 

int FUNC10(struct drm_crtc *crtc)
{
	struct drm_i915_private *dev_priv = FUNC8(crtc->dev);
	enum pipe pipe = FUNC9(crtc)->pipe;
	unsigned long irqflags;
	u32 bit = FUNC3(dev_priv) >= 7 ?
		FUNC1(pipe) : FUNC0(pipe);

	FUNC6(&dev_priv->irq_lock, irqflags);
	FUNC5(dev_priv, bit);
	FUNC7(&dev_priv->irq_lock, irqflags);

	/* Even though there is no DMC, frame counter can get stuck when
	 * PSR is active as no frames are generated.
	 */
	if (FUNC2(dev_priv))
		FUNC4(crtc);

	return 0;
}