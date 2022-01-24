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
struct max14577_muic_info {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  status; TYPE_1__* max14577; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX14577_CABLE_GROUP_ADC ; 
 int /*<<< orphan*/  MAX14577_CABLE_GROUP_CHG ; 
 int MAX14577_CHARGER_TYPE_NONE ; 
 int MAX14577_MUIC_ADC_OPEN ; 
 int /*<<< orphan*/  MAX14577_MUIC_REG_STATUS1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct max14577_muic_info*) ; 
 int FUNC3 (struct max14577_muic_info*) ; 
 int FUNC4 (struct max14577_muic_info*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct max14577_muic_info *info)
{
	int ret = 0;
	int adc;
	int chg_type;
	bool attached;

	FUNC5(&info->mutex);

	/* Read STATUSx register to detect accessory */
	ret = FUNC1(info->max14577->regmap,
			MAX14577_MUIC_REG_STATUS1, info->status, 2);
	if (ret) {
		FUNC0(info->dev, "failed to read MUIC register\n");
		FUNC6(&info->mutex);
		return ret;
	}

	adc = FUNC4(info, MAX14577_CABLE_GROUP_ADC,
					&attached);
	if (attached && adc != MAX14577_MUIC_ADC_OPEN) {
		ret = FUNC2(info);
		if (ret < 0) {
			FUNC0(info->dev, "Cannot detect accessory\n");
			FUNC6(&info->mutex);
			return ret;
		}
	}

	chg_type = FUNC4(info, MAX14577_CABLE_GROUP_CHG,
					&attached);
	if (attached && chg_type != MAX14577_CHARGER_TYPE_NONE) {
		ret = FUNC3(info);
		if (ret < 0) {
			FUNC0(info->dev, "Cannot detect charger accessory\n");
			FUNC6(&info->mutex);
			return ret;
		}
	}

	FUNC6(&info->mutex);

	return 0;
}