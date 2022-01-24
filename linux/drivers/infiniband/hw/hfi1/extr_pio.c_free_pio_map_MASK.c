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
struct hfi1_devdata {int /*<<< orphan*/ * kernel_send_context; int /*<<< orphan*/  pio_map_lock; int /*<<< orphan*/  pio_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct hfi1_devdata *dd)
{
	/* Free PIO map if allocated */
	if (FUNC3(dd->pio_map)) {
		FUNC4(&dd->pio_map_lock);
		FUNC2(FUNC3(dd->pio_map));
		FUNC0(dd->pio_map, NULL);
		FUNC5(&dd->pio_map_lock);
		FUNC6();
	}
	FUNC1(dd->kernel_send_context);
	dd->kernel_send_context = NULL;
}