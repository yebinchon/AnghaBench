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
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct mrfld_extcon_data {unsigned int id; int /*<<< orphan*/  edev; struct regmap* regmap; struct device* dev; } ;
struct intel_soc_pmic {struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCOVE_CHGRIRQ_ALL ; 
 int /*<<< orphan*/  BCOVE_ID ; 
 int /*<<< orphan*/  BCOVE_LVL1_CHGR ; 
 int /*<<< orphan*/  BCOVE_MCHGRIRQ1 ; 
 int /*<<< orphan*/  BCOVE_MIRQLVL1 ; 
 int /*<<< orphan*/  BCOVE_USBIDCTRL ; 
 int /*<<< orphan*/  BCOVE_USBIDCTRL_ALL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct intel_soc_pmic* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 struct mrfld_extcon_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct mrfld_extcon_data*) ; 
 int /*<<< orphan*/  mrfld_extcon_cable ; 
 int /*<<< orphan*/  FUNC7 (struct mrfld_extcon_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrfld_extcon_interrupt ; 
 int /*<<< orphan*/  FUNC8 (struct mrfld_extcon_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct mrfld_extcon_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mrfld_extcon_data*,int) ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct mrfld_extcon_data*) ; 
 int FUNC13 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct intel_soc_pmic *pmic = FUNC2(dev->parent);
	struct regmap *regmap = pmic->regmap;
	struct mrfld_extcon_data *data;
	unsigned int id;
	int irq, ret;

	irq = FUNC11(pdev, 0);
	if (irq < 0)
		return irq;

	data = FUNC5(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->dev = dev;
	data->regmap = regmap;

	data->edev = FUNC3(dev, mrfld_extcon_cable);
	if (FUNC0(data->edev))
		return -ENOMEM;

	ret = FUNC4(dev, data->edev);
	if (ret < 0) {
		FUNC1(dev, "can't register extcon device: %d\n", ret);
		return ret;
	}

	ret = FUNC6(dev, irq, NULL, mrfld_extcon_interrupt,
					IRQF_ONESHOT | IRQF_SHARED, pdev->name,
					data);
	if (ret) {
		FUNC1(dev, "can't register IRQ handler: %d\n", ret);
		return ret;
	}

	ret = FUNC13(regmap, BCOVE_ID, &id);
	if (ret) {
		FUNC1(dev, "can't read PMIC ID: %d\n", ret);
		return ret;
	}

	data->id = id;

	ret = FUNC10(data, true);
	if (ret)
		return ret;

	/* Get initial state */
	FUNC8(data);

	FUNC7(data, BCOVE_MIRQLVL1, BCOVE_LVL1_CHGR);
	FUNC7(data, BCOVE_MCHGRIRQ1, BCOVE_CHGRIRQ_ALL);

	FUNC9(data, BCOVE_USBIDCTRL, BCOVE_USBIDCTRL_ALL);

	FUNC12(pdev, data);

	return 0;
}