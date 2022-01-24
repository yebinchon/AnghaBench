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
struct TYPE_2__ {int /*<<< orphan*/ * dev; int /*<<< orphan*/  dev_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIL_INTOFF ; 
 scalar_t__ HIL_IRQ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__ hil_dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
	if (HIL_IRQ)
		FUNC0(HIL_IRQ, hil_dev.dev_id);

	/* Turn off interrupts */
	FUNC1(HIL_INTOFF, NULL, 0);

	FUNC2(hil_dev.dev);
	hil_dev.dev = NULL;
}