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
struct max8997_muic_info {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  status; int /*<<< orphan*/  muic; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX8997_CABLE_GROUP_ADC ; 
 int /*<<< orphan*/  MAX8997_CABLE_GROUP_CHG ; 
 int MAX8997_CHARGER_TYPE_NONE ; 
 int MAX8997_MUIC_ADC_OPEN ; 
 int /*<<< orphan*/  MAX8997_MUIC_REG_STATUS1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct max8997_muic_info*) ; 
 int FUNC3 (struct max8997_muic_info*) ; 
 int FUNC4 (struct max8997_muic_info*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct max8997_muic_info *info)
{
	int ret = 0;
	int adc;
	int chg_type;
	bool attached;

	FUNC5(&info->mutex);

	/* Read STATUSx register to detect accessory */
	ret = FUNC1(info->muic,
			MAX8997_MUIC_REG_STATUS1, 2, info->status);
	if (ret) {
		FUNC0(info->dev, "failed to read MUIC register\n");
		FUNC6(&info->mutex);
		return ret;
	}

	adc = FUNC4(info, MAX8997_CABLE_GROUP_ADC,
					&attached);
	if (attached && adc != MAX8997_MUIC_ADC_OPEN) {
		ret = FUNC2(info);
		if (ret < 0) {
			FUNC0(info->dev, "Cannot detect ADC cable\n");
			FUNC6(&info->mutex);
			return ret;
		}
	}

	chg_type = FUNC4(info, MAX8997_CABLE_GROUP_CHG,
					&attached);
	if (attached && chg_type != MAX8997_CHARGER_TYPE_NONE) {
		ret = FUNC3(info);
		if (ret < 0) {
			FUNC0(info->dev, "Cannot detect charger cable\n");
			FUNC6(&info->mutex);
			return ret;
		}
	}

	FUNC6(&info->mutex);

	return 0;
}