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
struct TYPE_2__ {int /*<<< orphan*/  force_wake_put; } ;
struct intel_uncore {int /*<<< orphan*/  lock; TYPE_1__ funcs; } ;
typedef  enum forcewake_domains { ____Placeholder_forcewake_domains } forcewake_domains ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct intel_uncore *uncore,
				enum forcewake_domains fw_domains)
{
	unsigned long irqflags;

	if (!uncore->funcs.force_wake_put)
		return;

	FUNC1(&uncore->lock, irqflags);
	FUNC0(uncore, fw_domains);
	FUNC2(&uncore->lock, irqflags);
}