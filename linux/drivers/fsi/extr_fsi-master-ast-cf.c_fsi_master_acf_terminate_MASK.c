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
struct fsi_master_acf {scalar_t__ sram; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARB_ARM_ACK ; 
 scalar_t__ ARB_REG ; 
 scalar_t__ CF_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct fsi_master_acf*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsi_master_acf*) ; 

__attribute__((used)) static void FUNC6(struct fsi_master_acf *master)
{
	unsigned long flags;

	/*
	 * A GPIO arbitration requestion could come in while this is
	 * happening. To avoid problems, we disable interrupts so it
	 * cannot preempt us on this CPU
	 */

	FUNC3(flags);

	/* Stop the coprocessor */
	FUNC5(master);

	/* We mark the copro not-started */
	FUNC0(0, master->sram + CF_STARTED);

	/* We mark the ARB register as having given up arbitration to
	 * deal with a potential race with the arbitration request
	 */
	FUNC1(ARB_ARM_ACK, master->sram + ARB_REG);

	FUNC2(flags);

	/* Return the GPIOs to the ARM */
	FUNC4(master);
}