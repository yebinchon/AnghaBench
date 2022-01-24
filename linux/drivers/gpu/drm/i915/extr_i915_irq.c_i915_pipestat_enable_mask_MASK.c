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
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 int PIPESTAT_INT_ENABLE_MASK ; 
 int PIPESTAT_INT_STATUS_MASK ; 
 int PIPE_A_PSR_STATUS_VLV ; 
 int PIPE_B_PSR_STATUS_VLV ; 
 int PIPE_FIFO_UNDERRUN_STATUS ; 
 int SPRITE0_FLIP_DONE_INT_EN_VLV ; 
 int SPRITE0_FLIP_DONE_INT_STATUS_VLV ; 
 int SPRITE1_FLIP_DONE_INT_EN_VLV ; 
 int SPRITE1_FLIP_DONE_INT_STATUS_VLV ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

u32 FUNC5(struct drm_i915_private *dev_priv,
			      enum pipe pipe)
{
	u32 status_mask = dev_priv->pipestat_irq_mask[pipe];
	u32 enable_mask = status_mask << 16;

	FUNC3(&dev_priv->irq_lock);

	if (FUNC0(dev_priv) < 5)
		goto out;

	/*
	 * On pipe A we don't support the PSR interrupt yet,
	 * on pipe B and C the same bit MBZ.
	 */
	if (FUNC2(status_mask & PIPE_A_PSR_STATUS_VLV))
		return 0;
	/*
	 * On pipe B and C we don't support the PSR interrupt yet, on pipe
	 * A the same bit is for perf counters which we don't use either.
	 */
	if (FUNC2(status_mask & PIPE_B_PSR_STATUS_VLV))
		return 0;

	enable_mask &= ~(PIPE_FIFO_UNDERRUN_STATUS |
			 SPRITE0_FLIP_DONE_INT_EN_VLV |
			 SPRITE1_FLIP_DONE_INT_EN_VLV);
	if (status_mask & SPRITE0_FLIP_DONE_INT_STATUS_VLV)
		enable_mask |= SPRITE0_FLIP_DONE_INT_EN_VLV;
	if (status_mask & SPRITE1_FLIP_DONE_INT_STATUS_VLV)
		enable_mask |= SPRITE1_FLIP_DONE_INT_EN_VLV;

out:
	FUNC1(enable_mask & ~PIPESTAT_INT_ENABLE_MASK ||
		  status_mask & ~PIPESTAT_INT_STATUS_MASK,
		  "pipe %c: enable_mask=0x%x, status_mask=0x%x\n",
		  FUNC4(pipe), enable_mask, status_mask);

	return enable_mask;
}