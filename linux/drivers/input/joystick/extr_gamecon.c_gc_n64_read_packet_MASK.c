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
struct gc {TYPE_1__* pd; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int GC_N64_CLOCK ; 
 int GC_N64_DELAY ; 
 int GC_N64_LENGTH ; 
 int /*<<< orphan*/  GC_N64_OUT ; 
 int GC_N64_POWER_R ; 
 int /*<<< orphan*/  GC_N64_REQUEST_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct gc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned char FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct gc *gc, unsigned char *data)
{
	int i;
	unsigned long flags;

/*
 * Request the pad to transmit data
 */

	FUNC3(flags);
	FUNC0(gc, GC_N64_REQUEST_DATA, GC_N64_OUT);
	FUNC1(gc, GC_N64_OUT);
	FUNC2(flags);

/*
 * Wait for the pad response to be loaded into the 33-bit register
 * of the adapter.
 */

	FUNC6(GC_N64_DELAY);

/*
 * Grab data (ignoring the last bit, which is a stop bit)
 */

	for (i = 0; i < GC_N64_LENGTH; i++) {
		FUNC5(gc->pd->port, GC_N64_POWER_R);
		FUNC6(2);
		data[i] = FUNC4(gc->pd->port);
		FUNC5(gc->pd->port, GC_N64_POWER_R | GC_N64_CLOCK);
	 }

/*
 * We must wait 200 ms here for the controller to reinitialize before
 * the next read request. No worries as long as gc_read is polled less
 * frequently than this.
 */

}