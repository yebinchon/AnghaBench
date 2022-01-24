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
struct max77693_muic_info {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  status; TYPE_1__* max77693; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap_muic; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX77693_CABLE_GROUP_ADC ; 
 int /*<<< orphan*/  MAX77693_CABLE_GROUP_CHG ; 
 int MAX77693_CHARGER_TYPE_NONE ; 
 int MAX77693_MUIC_ADC_OPEN ; 
 int /*<<< orphan*/  MAX77693_MUIC_REG_STATUS1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct max77693_muic_info*) ; 
 int FUNC2 (struct max77693_muic_info*) ; 
 int FUNC3 (struct max77693_muic_info*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct max77693_muic_info *info)
{
	int ret = 0;
	int adc;
	int chg_type;
	bool attached;

	FUNC4(&info->mutex);

	/* Read STATUSx register to detect accessory */
	ret = FUNC6(info->max77693->regmap_muic,
			MAX77693_MUIC_REG_STATUS1, info->status, 2);
	if (ret) {
		FUNC0(info->dev, "failed to read MUIC register\n");
		FUNC5(&info->mutex);
		return ret;
	}

	adc = FUNC3(info, MAX77693_CABLE_GROUP_ADC,
					&attached);
	if (attached && adc != MAX77693_MUIC_ADC_OPEN) {
		ret = FUNC1(info);
		if (ret < 0) {
			FUNC0(info->dev, "Cannot detect accessory\n");
			FUNC5(&info->mutex);
			return ret;
		}
	}

	chg_type = FUNC3(info, MAX77693_CABLE_GROUP_CHG,
					&attached);
	if (attached && chg_type != MAX77693_CHARGER_TYPE_NONE) {
		ret = FUNC2(info);
		if (ret < 0) {
			FUNC0(info->dev, "Cannot detect charger accessory\n");
			FUNC5(&info->mutex);
			return ret;
		}
	}

	FUNC5(&info->mutex);

	return 0;
}