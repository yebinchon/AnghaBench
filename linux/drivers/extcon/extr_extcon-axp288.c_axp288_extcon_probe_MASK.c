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
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct axp288_extcon_info {int* irq; int /*<<< orphan*/  role_work; scalar_t__ role_sw; TYPE_1__ id_nb; scalar_t__ id_extcon; int /*<<< orphan*/  regmap_irqc; scalar_t__ edev; int /*<<< orphan*/  vbus_attach; int /*<<< orphan*/  previous_cable; int /*<<< orphan*/  regmap; struct device* dev; } ;
struct axp20x_dev {int /*<<< orphan*/  regmap_irqc; int /*<<< orphan*/  regmap; } ;
struct acpi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int EXTCON_IRQ_END ; 
 int /*<<< orphan*/  EXTCON_NONE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_NO_SUSPEND ; 
 int IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 struct acpi_device* FUNC3 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_device*) ; 
 int /*<<< orphan*/  axp288_extcon_cables ; 
 int /*<<< orphan*/  FUNC5 (struct axp288_extcon_info*) ; 
 int /*<<< orphan*/  axp288_extcon_id_evt ; 
 int /*<<< orphan*/  axp288_extcon_isr ; 
 int /*<<< orphan*/  FUNC6 (struct axp288_extcon_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct axp288_extcon_info*) ; 
 int /*<<< orphan*/  axp288_put_role_sw ; 
 int /*<<< orphan*/  axp288_usb_role_work ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 struct axp20x_dev* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ ,struct axp288_extcon_info*) ; 
 scalar_t__ FUNC12 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct device*,scalar_t__) ; 
 int FUNC14 (struct device*,scalar_t__,TYPE_1__*) ; 
 struct axp288_extcon_info* FUNC15 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct axp288_extcon_info*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct axp288_extcon_info*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  system_long_wq ; 
 scalar_t__ FUNC24 (struct device*) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct axp288_extcon_info *info;
	struct axp20x_dev *axp20x = FUNC9(pdev->dev.parent);
	struct device *dev = &pdev->dev;
	struct acpi_device *adev;
	int ret, i, pirq;

	info = FUNC15(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->dev = &pdev->dev;
	info->regmap = axp20x->regmap;
	info->regmap_irqc = axp20x->regmap_irqc;
	info->previous_cable = EXTCON_NONE;
	FUNC0(&info->role_work, axp288_usb_role_work);
	info->id_nb.notifier_call = axp288_extcon_id_evt;

	FUNC20(pdev, info);

	info->role_sw = FUNC24(dev);
	if (FUNC1(info->role_sw))
		return FUNC2(info->role_sw);
	if (info->role_sw) {
		ret = FUNC11(dev, axp288_put_role_sw, info);
		if (ret)
			return ret;

		adev = FUNC3("INT3496", NULL, -1);
		if (adev) {
			info->id_extcon = FUNC17(FUNC4(adev));
			FUNC21(&adev->dev);
			if (!info->id_extcon)
				return -EPROBE_DEFER;

			FUNC10(dev, "controlling USB role\n");
		} else {
			FUNC10(dev, "controlling USB role based on Vbus presence\n");
		}
	}

	info->vbus_attach = FUNC7(info);

	FUNC6(info);

	/* Initialize extcon device */
	info->edev = FUNC12(&pdev->dev,
					      axp288_extcon_cables);
	if (FUNC1(info->edev)) {
		FUNC8(&pdev->dev, "failed to allocate memory for extcon\n");
		return FUNC2(info->edev);
	}

	/* Register extcon device */
	ret = FUNC13(&pdev->dev, info->edev);
	if (ret) {
		FUNC8(&pdev->dev, "failed to register extcon device\n");
		return ret;
	}

	for (i = 0; i < EXTCON_IRQ_END; i++) {
		pirq = FUNC19(pdev, i);
		if (pirq < 0)
			return pirq;

		info->irq[i] = FUNC23(info->regmap_irqc, pirq);
		if (info->irq[i] < 0) {
			FUNC8(&pdev->dev,
				"failed to get virtual interrupt=%d\n", pirq);
			ret = info->irq[i];
			return ret;
		}

		ret = FUNC16(&pdev->dev, info->irq[i],
				NULL, axp288_extcon_isr,
				IRQF_ONESHOT | IRQF_NO_SUSPEND,
				pdev->name, info);
		if (ret) {
			FUNC8(&pdev->dev, "failed to request interrupt=%d\n",
							info->irq[i]);
			return ret;
		}
	}

	if (info->id_extcon) {
		ret = FUNC14(dev, info->id_extcon,
							&info->id_nb);
		if (ret)
			return ret;
	}

	/* Make sure the role-sw is set correctly before doing BC detection */
	if (info->role_sw) {
		FUNC22(system_long_wq, &info->role_work);
		FUNC18(&info->role_work);
	}

	/* Start charger cable type detection */
	FUNC5(info);

	return 0;
}