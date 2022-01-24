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
struct arizona_extcon_info {int hpdet_ip_version; struct arizona* arizona; } ;
struct arizona {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_HEADPHONE_DETECT_2 ; 
 int ARIZONA_HPDET_WAIT_COUNT ; 
 int /*<<< orphan*/  ARIZONA_HPDET_WAIT_DELAY_MS ; 
 unsigned int ARIZONA_HP_DONE ; 
 unsigned int ARIZONA_HP_DONE_B ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct arizona_extcon_info *info)
{
	struct arizona *arizona = info->arizona;
	unsigned int val;
	int i, ret;

	for (i = 0; i < ARIZONA_HPDET_WAIT_COUNT; i++) {
		ret = FUNC3(arizona->regmap, ARIZONA_HEADPHONE_DETECT_2,
				&val);
		if (ret) {
			FUNC0(arizona->dev,
				"Failed to read HPDET state: %d\n", ret);
			return ret;
		}

		switch (info->hpdet_ip_version) {
		case 0:
			if (val & ARIZONA_HP_DONE)
				return 0;
			break;
		default:
			if (val & ARIZONA_HP_DONE_B)
				return 0;
			break;
		}

		FUNC2(ARIZONA_HPDET_WAIT_DELAY_MS);
	}

	FUNC1(arizona->dev, "HPDET did not appear to complete\n");

	return -ETIMEDOUT;
}