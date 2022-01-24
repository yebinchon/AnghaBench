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
struct timing_generator {TYPE_1__* funcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* is_counter_moving ) (struct timing_generator*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC1 (struct timing_generator*) ; 

void FUNC2(struct timing_generator *tg)
{
	while (FUNC0(tg)) {
		if (!tg->funcs->is_counter_moving(tg)) {
			/* error - no point to wait if counter is not moving */
			break;
		}
	}
}