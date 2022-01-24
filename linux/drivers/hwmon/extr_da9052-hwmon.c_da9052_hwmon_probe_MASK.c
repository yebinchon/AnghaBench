#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct da9052_hwmon {int tsiref_mv; scalar_t__ tsiref; TYPE_1__* da9052; scalar_t__ tsi_as_adc; int /*<<< orphan*/  tsidone; int /*<<< orphan*/  hwmon_lock; } ;
struct TYPE_6__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_ADCCONT_ADCMODE ; 
 int /*<<< orphan*/  DA9052_ADC_CONT_REG ; 
 int /*<<< orphan*/  DA9052_IRQ_TSIREADY ; 
 int /*<<< orphan*/  DA9052_TSI_CONT_A_REG ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,struct da9052_hwmon*) ; 
 int /*<<< orphan*/  da9052_groups ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct da9052_hwmon*) ; 
 int /*<<< orphan*/  da9052_tsi_datardy_irq ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*) ; 
 struct device* FUNC10 (struct device*,char*,struct da9052_hwmon*,int /*<<< orphan*/ ) ; 
 struct da9052_hwmon* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct da9052_hwmon*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int FUNC17 (scalar_t__) ; 
 int FUNC18 (scalar_t__) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct da9052_hwmon *hwmon;
	struct device *hwmon_dev;
	int err;

	hwmon = FUNC11(dev, sizeof(struct da9052_hwmon), GFP_KERNEL);
	if (!hwmon)
		return -ENOMEM;

	FUNC15(pdev, hwmon);

	FUNC14(&hwmon->hwmon_lock);
	hwmon->da9052 = FUNC8(pdev->dev.parent);

	FUNC13(&hwmon->tsidone);

	hwmon->tsi_as_adc =
		FUNC9(pdev->dev.parent, "dlg,tsi-as-adc");

	if (hwmon->tsi_as_adc) {
		hwmon->tsiref = FUNC12(pdev->dev.parent, "tsiref");
		if (FUNC0(hwmon->tsiref)) {
			err = FUNC1(hwmon->tsiref);
			FUNC7(&pdev->dev, "failed to get tsiref: %d", err);
			return err;
		}

		err = FUNC17(hwmon->tsiref);
		if (err)
			return err;

		hwmon->tsiref_mv = FUNC18(hwmon->tsiref);
		if (hwmon->tsiref_mv < 0) {
			err = hwmon->tsiref_mv;
			goto exit_regulator;
		}

		/* convert from microvolt (DT) to millivolt (hwmon) */
		hwmon->tsiref_mv /= 1000;

		/* TSIREF limits from datasheet */
		if (hwmon->tsiref_mv < 1800 || hwmon->tsiref_mv > 2600) {
			FUNC7(hwmon->da9052->dev, "invalid TSIREF voltage: %d",
				hwmon->tsiref_mv);
			err = -ENXIO;
			goto exit_regulator;
		}

		/* disable touchscreen features */
		FUNC5(hwmon->da9052, DA9052_TSI_CONT_A_REG, 0x00);

		/* Sample every 1ms */
		FUNC4(hwmon->da9052, DA9052_ADC_CONT_REG,
					  DA9052_ADCCONT_ADCMODE,
					  DA9052_ADCCONT_ADCMODE);

		err = FUNC6(hwmon->da9052, DA9052_IRQ_TSIREADY,
					 "tsiready-irq", da9052_tsi_datardy_irq,
					 hwmon);
		if (err) {
			FUNC7(&pdev->dev, "Failed to register TSIRDY IRQ: %d",
				err);
			goto exit_regulator;
		}
	}

	hwmon_dev = FUNC10(dev, "da9052",
							   hwmon,
							   da9052_groups);
	err = FUNC2(hwmon_dev);
	if (err)
		goto exit_irq;

	return 0;

exit_irq:
	if (hwmon->tsi_as_adc)
		FUNC3(hwmon->da9052, DA9052_IRQ_TSIREADY, hwmon);
exit_regulator:
	if (hwmon->tsiref)
		FUNC16(hwmon->tsiref);

	return err;
}