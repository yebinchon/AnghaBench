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
typedef  int /*<<< orphan*/  u32 ;
struct drm_psb_private {scalar_t__* pipestat; int /*<<< orphan*/  dev; int /*<<< orphan*/  vdc_irq_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSB_INT_ENABLE_R ; 
 int /*<<< orphan*/  PSB_INT_MASK_R ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct drm_psb_private *dev_priv, int pipe)
{
	if (dev_priv->pipestat[pipe] == 0) {
		if (FUNC1(dev_priv->dev, false)) {
			u32 pipe_event = FUNC3(pipe);
			dev_priv->vdc_irq_mask &= ~pipe_event;
			FUNC0(~dev_priv->vdc_irq_mask, PSB_INT_MASK_R);
			FUNC0(dev_priv->vdc_irq_mask, PSB_INT_ENABLE_R);
			FUNC2(dev_priv->dev);
		}
	}
}