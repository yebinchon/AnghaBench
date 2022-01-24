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
struct dc {TYPE_1__* res_pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  hubbub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct dc*) ; 
 int /*<<< orphan*/  FUNC2 (struct dc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct dc *dc)
{
	static bool should_log_hw_state; /* prevent hw state log by default */

	if (!FUNC3(dc->res_pool->hubbub)) {
		if (should_log_hw_state) {
			FUNC2(dc, NULL);
		}
		FUNC0();
		if (FUNC1(dc)) {
		/*check again*/
			if (!FUNC3(dc->res_pool->hubbub))
				FUNC0();
		}
	}
}