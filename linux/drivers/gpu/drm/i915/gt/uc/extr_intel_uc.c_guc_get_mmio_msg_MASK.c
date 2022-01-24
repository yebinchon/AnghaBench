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
typedef  int u32 ;
struct intel_guc {int mmio_msg; int msg_enabled_mask; int /*<<< orphan*/  irq_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_guc*) ; 
 TYPE_1__* FUNC2 (struct intel_guc*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct intel_guc *guc)
{
	u32 val;

	FUNC4(&guc->irq_lock);

	val = FUNC3(FUNC2(guc)->uncore, FUNC0(15));
	guc->mmio_msg |= val & guc->msg_enabled_mask;

	/*
	 * clear all events, including the ones we're not currently servicing,
	 * to make sure we don't try to process a stale message if we enable
	 * handling of more events later.
	 */
	FUNC1(guc);

	FUNC5(&guc->irq_lock);
}