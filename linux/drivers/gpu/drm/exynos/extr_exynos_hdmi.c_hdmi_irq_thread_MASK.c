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
struct hdmi_context {int /*<<< orphan*/  hotplug_work; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HOTPLUG_DEBOUNCE_MS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_wq ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *arg)
{
	struct hdmi_context *hdata = arg;

	FUNC0(system_wq, &hdata->hotplug_work,
			FUNC1(HOTPLUG_DEBOUNCE_MS));

	return IRQ_HANDLED;
}