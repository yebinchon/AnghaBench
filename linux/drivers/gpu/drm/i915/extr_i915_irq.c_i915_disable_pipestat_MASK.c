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
struct drm_i915_private {int* pipestat_irq_mask; int /*<<< orphan*/  irq_lock; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PIPESTAT_INT_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(struct drm_i915_private *dev_priv,
			   enum pipe pipe, u32 status_mask)
{
	i915_reg_t reg = FUNC1(pipe);
	u32 enable_mask;

	FUNC4(status_mask & ~PIPESTAT_INT_STATUS_MASK,
		  "pipe %c: status_mask=0x%x\n",
		  FUNC8(pipe), status_mask);

	FUNC7(&dev_priv->irq_lock);
	FUNC3(!FUNC6(dev_priv));

	if ((dev_priv->pipestat_irq_mask[pipe] & status_mask) == 0)
		return;

	dev_priv->pipestat_irq_mask[pipe] &= ~status_mask;
	enable_mask = FUNC5(dev_priv, pipe);

	FUNC0(reg, enable_mask | status_mask);
	FUNC2(reg);
}