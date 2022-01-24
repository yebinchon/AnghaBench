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
struct intel_uncore {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MI_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct intel_uncore *uncore)
{
	/* WaIssueDummyWriteToWakeupFromRC6:ilk Issue a dummy write to wake up
	 * the chip from rc6 before touching it for real. MI_MODE is masked,
	 * hence harmless to write 0 into. */
	FUNC0(uncore, MI_MODE, 0);
}