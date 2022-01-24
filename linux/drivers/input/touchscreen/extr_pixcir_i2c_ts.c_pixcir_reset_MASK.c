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
struct pixcir_i2c_ts_data {int /*<<< orphan*/  gpio_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct pixcir_i2c_ts_data *tsdata)
{
	if (!FUNC0(tsdata->gpio_reset)) {
		FUNC1(tsdata->gpio_reset, 1);
		FUNC3(100);	/* datasheet section 1.2.3 says 80ns min. */
		FUNC1(tsdata->gpio_reset, 0);
		/* wait for controller ready. 100ms guess. */
		FUNC2(100);
	}
}