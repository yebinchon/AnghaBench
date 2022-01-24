#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dal_logger {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  value; } ;
struct TYPE_4__ {TYPE_1__ x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int MAX_HW_POINTS ; 
 TYPE_2__* coordinates_x ; 

void FUNC1(struct dal_logger *logger)
{
	int i = 0;

	if (logger != NULL) {
		FUNC0("Log X Distribution\n");

		for (i = 0; i < MAX_HW_POINTS; i++)
			FUNC0("%llu\n", coordinates_x[i].x.value);
	}
}