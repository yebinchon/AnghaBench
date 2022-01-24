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
typedef  int u64 ;
typedef  int u32 ;
struct srf04_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  ts_rising; int /*<<< orphan*/  ts_falling; int /*<<< orphan*/  falling; int /*<<< orphan*/  rising; int /*<<< orphan*/  gpiod_trig; TYPE_1__* cfg; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  trigger_pulse_us; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(struct srf04_data *data)
{
	int ret;
	ktime_t ktime_dt;
	u64 dt_ns;
	u32 time_ns, distance_mm;

	/*
	 * just one read-echo-cycle can take place at a time
	 * ==> lock against concurrent reading calls
	 */
	FUNC3(&data->lock);

	FUNC5(&data->rising);
	FUNC5(&data->falling);

	FUNC0(data->gpiod_trig, 1);
	FUNC6(data->cfg->trigger_pulse_us);
	FUNC0(data->gpiod_trig, 0);

	/* it should not take more than 20 ms until echo is rising */
	ret = FUNC7(&data->rising, HZ/50);
	if (ret < 0) {
		FUNC4(&data->lock);
		return ret;
	} else if (ret == 0) {
		FUNC4(&data->lock);
		return -ETIMEDOUT;
	}

	/* it cannot take more than 50 ms until echo is falling */
	ret = FUNC7(&data->falling, HZ/20);
	if (ret < 0) {
		FUNC4(&data->lock);
		return ret;
	} else if (ret == 0) {
		FUNC4(&data->lock);
		return -ETIMEDOUT;
	}

	ktime_dt = FUNC1(data->ts_falling, data->ts_rising);

	FUNC4(&data->lock);

	dt_ns = FUNC2(ktime_dt);
	/*
	 * measuring more than 6,45 meters is beyond the capabilities of
	 * the supported sensors
	 * ==> filter out invalid results for not measuring echos of
	 *     another us sensor
	 *
	 * formula:
	 *         distance     6,45 * 2 m
	 * time = ---------- = ------------ = 40438871 ns
	 *          speed         319 m/s
	 *
	 * using a minimum speed at -20 °C of 319 m/s
	 */
	if (dt_ns > 40438871)
		return -EIO;

	time_ns = dt_ns;

	/*
	 * the speed as function of the temperature is approximately:
	 *
	 * speed = 331,5 + 0,6 * Temp
	 *   with Temp in °C
	 *   and speed in m/s
	 *
	 * use 343,5 m/s as ultrasonic speed at 20 °C here in absence of the
	 * temperature
	 *
	 * therefore:
	 *             time     343,5     time * 106
	 * distance = ------ * ------- = ------------
	 *             10^6         2         617176
	 *   with time in ns
	 *   and distance in mm (one way)
	 *
	 * because we limit to 6,45 meters the multiplication with 106 just
	 * fits into 32 bit
	 */
	distance_mm = time_ns * 106 / 617176;

	return distance_mm;
}