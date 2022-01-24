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
struct i2c_timings {int bus_freq_hz; int scl_rise_ns; int scl_fall_ns; int scl_int_delay_ns; int sda_fall_ns; int sda_hold_ns; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_timings*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct device *dev, struct i2c_timings *t, bool use_defaults)
{
	int ret;

	FUNC1(t, 0, sizeof(*t));

	ret = FUNC0(dev, "clock-frequency", &t->bus_freq_hz);
	if (ret && use_defaults)
		t->bus_freq_hz = 100000;

	ret = FUNC0(dev, "i2c-scl-rising-time-ns", &t->scl_rise_ns);
	if (ret && use_defaults) {
		if (t->bus_freq_hz <= 100000)
			t->scl_rise_ns = 1000;
		else if (t->bus_freq_hz <= 400000)
			t->scl_rise_ns = 300;
		else
			t->scl_rise_ns = 120;
	}

	ret = FUNC0(dev, "i2c-scl-falling-time-ns", &t->scl_fall_ns);
	if (ret && use_defaults) {
		if (t->bus_freq_hz <= 400000)
			t->scl_fall_ns = 300;
		else
			t->scl_fall_ns = 120;
	}

	FUNC0(dev, "i2c-scl-internal-delay-ns", &t->scl_int_delay_ns);

	ret = FUNC0(dev, "i2c-sda-falling-time-ns", &t->sda_fall_ns);
	if (ret && use_defaults)
		t->sda_fall_ns = t->scl_fall_ns;

	FUNC0(dev, "i2c-sda-hold-time-ns", &t->sda_hold_ns);
}