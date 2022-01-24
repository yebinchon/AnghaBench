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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ OMAP1_MPUIO_BASE ; 
 scalar_t__ OMAP_MPUIO_KBD_MASKIT ; 
 int /*<<< orphan*/  kp_tasklet ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	/* disable keyboard interrupt and schedule for handling */
	FUNC0(1, OMAP1_MPUIO_BASE + OMAP_MPUIO_KBD_MASKIT);

	FUNC1(&kp_tasklet);

	return IRQ_HANDLED;
}