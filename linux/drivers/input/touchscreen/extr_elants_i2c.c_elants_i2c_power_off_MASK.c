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
struct elants_data {int /*<<< orphan*/  vcc33; int /*<<< orphan*/  vccio; int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *_data)
{
	struct elants_data *ts = _data;

	if (!FUNC0(ts->reset_gpio)) {
		/*
		 * Activate reset gpio to prevent leakage through the
		 * pin once we shut off power to the controller.
		 */
		FUNC1(ts->reset_gpio, 1);
		FUNC2(ts->vccio);
		FUNC2(ts->vcc33);
	}
}