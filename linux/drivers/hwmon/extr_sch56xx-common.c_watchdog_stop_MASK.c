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
typedef  int u8 ;
struct watchdog_device {int dummy; } ;
struct sch56xx_watchdog_data {int watchdog_output_enable; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCH56XX_REG_WDOG_OUTPUT_ENABLE ; 
 int SCH56XX_WDOG_OUTPUT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sch56xx_watchdog_data* FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wddev)
{
	struct sch56xx_watchdog_data *data = FUNC3(wddev);
	int ret = 0;
	u8 val;

	val = data->watchdog_output_enable & ~SCH56XX_WDOG_OUTPUT_ENABLE;
	FUNC0(data->io_lock);
	ret = FUNC2(data->addr,
					SCH56XX_REG_WDOG_OUTPUT_ENABLE, val);
	FUNC1(data->io_lock);
	if (ret)
		return ret;

	data->watchdog_output_enable = val;
	return 0;
}