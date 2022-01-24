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
struct timing_generator {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timing_generator*) ; 
 scalar_t__ FUNC1 (struct timing_generator*) ; 

void FUNC2(struct timing_generator *tg)
{
	/* We want to catch beginning of VBlank here, so if the first try are
	 * in VBlank, we might be very close to Active, in this case wait for
	 * another frame
	 */
	while (FUNC1(tg)) {
		if (!FUNC0(tg)) {
			/* error - no point to wait if counter is not moving */
			break;
		}
	}

	while (!FUNC1(tg)) {
		if (!FUNC0(tg)) {
			/* error - no point to wait if counter is not moving */
			break;
		}
	}
}