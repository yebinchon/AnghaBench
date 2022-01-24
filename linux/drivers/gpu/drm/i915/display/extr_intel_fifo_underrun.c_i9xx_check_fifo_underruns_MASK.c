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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; TYPE_1__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  irq_lock; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int PIPE_FIFO_UNDERRUN_STATUS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct intel_crtc *crtc)
{
	struct drm_i915_private *dev_priv = FUNC8(crtc->base.dev);
	i915_reg_t reg = FUNC3(crtc->pipe);
	u32 enable_mask;

	FUNC6(&dev_priv->irq_lock);

	if ((FUNC1(reg) & PIPE_FIFO_UNDERRUN_STATUS) == 0)
		return;

	enable_mask = FUNC5(dev_priv, crtc->pipe);
	FUNC2(reg, enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
	FUNC4(reg);

	FUNC9(dev_priv, crtc->pipe);
	FUNC0("pipe %c underrun\n", FUNC7(crtc->pipe));
}