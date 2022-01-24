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
struct axp288_extcon_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXP288_PS_STAT_REG ; 
 int PS_STAT_VBUS_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool FUNC2(struct axp288_extcon_info *info)
{
	int ret, pwr_stat;

	ret = FUNC1(info->regmap, AXP288_PS_STAT_REG, &pwr_stat);
	if (ret < 0) {
		FUNC0(info->dev, "failed to read vbus status\n");
		return false;
	}

	return !!(pwr_stat & PS_STAT_VBUS_VALID);
}