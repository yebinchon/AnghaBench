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
struct timer_list {scalar_t__ expires; } ;
struct drm_psb_private {int /*<<< orphan*/  lid_lock; struct timer_list lid_timer; } ;

/* Variables and functions */
 scalar_t__ PSB_LID_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct timer_list*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  psb_lid_timer_func ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct timer_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct drm_psb_private *dev_priv)
{
	struct timer_list *lid_timer = &dev_priv->lid_timer;
	unsigned long irq_flags;

	FUNC1(&dev_priv->lid_lock);
	FUNC2(&dev_priv->lid_lock, irq_flags);

	FUNC4(lid_timer, psb_lid_timer_func, 0);

	lid_timer->expires = jiffies + PSB_LID_DELAY;

	FUNC0(lid_timer);
	FUNC3(&dev_priv->lid_lock, irq_flags);
}