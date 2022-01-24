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
typedef  int u32 ;
struct nsa320_hwmon {int mcu_data; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; int /*<<< orphan*/  act; int /*<<< orphan*/  data; int /*<<< orphan*/  clk; } ;
struct device {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EIO ; 
 scalar_t__ HZ ; 
 int MAGIC_NUMBER ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct nsa320_hwmon* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static s32 FUNC10(struct device *dev)
{
	u32 mcu_data;
	u32 mask;
	struct nsa320_hwmon *hwmon = FUNC2(dev);

	FUNC6(&hwmon->update_lock);

	mcu_data = hwmon->mcu_data;

	if (FUNC8(jiffies, hwmon->last_updated + HZ) || mcu_data == 0) {
		FUNC4(hwmon->act, 1);
		FUNC5(100);

		mcu_data = 0;
		for (mask = FUNC0(31); mask; mask >>= 1) {
			FUNC4(hwmon->clk, 0);
			FUNC9(100, 200);
			FUNC4(hwmon->clk, 1);
			FUNC9(100, 200);
			if (FUNC3(hwmon->data))
				mcu_data |= mask;
		}

		FUNC4(hwmon->act, 0);
		FUNC1(dev, "Read raw MCU data %08x\n", mcu_data);

		if ((mcu_data >> 24) != MAGIC_NUMBER) {
			FUNC1(dev, "Read invalid MCU data %08x\n", mcu_data);
			mcu_data = -EIO;
		} else {
			hwmon->mcu_data = mcu_data;
			hwmon->last_updated = jiffies;
		}
	}

	FUNC7(&hwmon->update_lock);

	return mcu_data;
}