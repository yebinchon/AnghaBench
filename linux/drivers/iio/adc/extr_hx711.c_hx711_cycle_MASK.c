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
struct hx711_data {int /*<<< orphan*/  gpiod_dout; int /*<<< orphan*/  data_ready_delay_ns; int /*<<< orphan*/  gpiod_pd_sck; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hx711_data *hx711_data)
{
	unsigned long flags;

	/*
	 * if preempted for more then 60us while PD_SCK is high:
	 * hx711 is going in reset
	 * ==> measuring is false
	 */
	FUNC3(flags);
	FUNC1(hx711_data->gpiod_pd_sck, 1);

	/*
	 * wait until DOUT is ready
	 * it turned out that parasitic capacities are extending the time
	 * until DOUT has reached it's value
	 */
	FUNC4(hx711_data->data_ready_delay_ns);

	/*
	 * here we are not waiting for 0.2 us as suggested by the datasheet,
	 * because the oscilloscope showed in a test scenario
	 * at least 1.15 us for PD_SCK high (T3 in datasheet)
	 * and 0.56 us for PD_SCK low on TI Sitara with 800 MHz
	 */
	FUNC1(hx711_data->gpiod_pd_sck, 0);
	FUNC2(flags);

	/*
	 * make it a square wave for addressing cases with capacitance on
	 * PC_SCK
	 */
	FUNC4(hx711_data->data_ready_delay_ns);

	/* sample as late as possible */
	return FUNC0(hx711_data->gpiod_dout);
}