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
struct sch56xx_watchdog_data {int watchdog_preset; int watchdog_output_enable; int /*<<< orphan*/  io_lock; scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCH56XX_REG_WDOG_OUTPUT_ENABLE ; 
 int /*<<< orphan*/  SCH56XX_REG_WDOG_PRESET ; 
 int SCH56XX_WDOG_OUTPUT_ENABLE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct sch56xx_watchdog_data* FUNC5 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC6(struct watchdog_device *wddev)
{
	struct sch56xx_watchdog_data *data = FUNC5(wddev);
	int ret;
	u8 val;

	/*
	 * The sch56xx's watchdog cannot really be started / stopped
	 * it is always running, but we can avoid the timer expiring
	 * from causing a system reset by clearing the output enable bit.
	 *
	 * The sch56xx's watchdog will set the watchdog event bit, bit 0
	 * of the second interrupt source register (at base-address + 9),
	 * when the timer expires.
	 *
	 * This will only cause a system reset if the 0-1 flank happens when
	 * output enable is true. Setting output enable after the flank will
	 * not cause a reset, nor will the timer expiring a second time.
	 * This means we must clear the watchdog event bit in case it is set.
	 *
	 * The timer may still be running (after a recent watchdog_stop) and
	 * mere milliseconds away from expiring, so the timer must be reset
	 * first!
	 */

	FUNC1(data->io_lock);

	/* 1. Reset the watchdog countdown counter */
	ret = FUNC4(data->addr, SCH56XX_REG_WDOG_PRESET,
					data->watchdog_preset);
	if (ret)
		goto leave;

	/* 2. Enable output */
	val = data->watchdog_output_enable | SCH56XX_WDOG_OUTPUT_ENABLE;
	ret = FUNC4(data->addr,
					SCH56XX_REG_WDOG_OUTPUT_ENABLE, val);
	if (ret)
		goto leave;

	data->watchdog_output_enable = val;

	/* 3. Clear the watchdog event bit if set */
	val = FUNC0(data->addr + 9);
	if (val & 0x01)
		FUNC3(0x01, data->addr + 9);

leave:
	FUNC2(data->io_lock);
	return ret;
}