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
struct usb_extcon_info {int /*<<< orphan*/  debounce_jiffies; int /*<<< orphan*/  wq_detcable; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static irqreturn_t FUNC1(int irq, void *dev_id)
{
	struct usb_extcon_info *info = dev_id;

	FUNC0(system_power_efficient_wq, &info->wq_detcable,
			   info->debounce_jiffies);

	return IRQ_HANDLED;
}