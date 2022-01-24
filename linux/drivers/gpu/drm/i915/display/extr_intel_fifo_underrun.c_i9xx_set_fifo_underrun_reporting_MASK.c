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
typedef  int u32 ;
struct drm_i915_private {int /*<<< orphan*/  irq_lock; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int PIPE_FIFO_UNDERRUN_STATUS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct drm_i915_private* FUNC8 (struct drm_device*) ; 

__attribute__((used)) static void FUNC9(struct drm_device *dev,
					     enum pipe pipe,
					     bool enable, bool old)
{
	struct drm_i915_private *dev_priv = FUNC8(dev);
	i915_reg_t reg = FUNC3(pipe);

	FUNC6(&dev_priv->irq_lock);

	if (enable) {
		u32 enable_mask = FUNC5(dev_priv, pipe);

		FUNC2(reg, enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
		FUNC4(reg);
	} else {
		if (old && FUNC1(reg) & PIPE_FIFO_UNDERRUN_STATUS)
			FUNC0("pipe %c underrun\n", FUNC7(pipe));
	}
}