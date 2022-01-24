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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  SCDC_TMDS_BIT_CLOCK_RATIO_BY_40 ; 
 int /*<<< orphan*/  SCDC_TMDS_CONFIG ; 
 int FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

bool FUNC4(struct i2c_adapter *adapter, bool set)
{
	u8 config;
	int ret;

	ret = FUNC1(adapter, SCDC_TMDS_CONFIG, &config);
	if (ret < 0) {
		FUNC0("Failed to read TMDS config: %d\n", ret);
		return false;
	}

	if (set)
		config |= SCDC_TMDS_BIT_CLOCK_RATIO_BY_40;
	else
		config &= ~SCDC_TMDS_BIT_CLOCK_RATIO_BY_40;

	ret = FUNC2(adapter, SCDC_TMDS_CONFIG, config);
	if (ret < 0) {
		FUNC0("Failed to set TMDS clock ratio: %d\n", ret);
		return false;
	}

	/*
	 * The spec says that a source should wait minimum 1ms and maximum
	 * 100ms after writing the TMDS config for clock ratio. Lets allow a
	 * wait of upto 2ms here.
	 */
	FUNC3(1000, 2000);
	return true;
}