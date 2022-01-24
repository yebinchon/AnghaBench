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
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct platform_device {int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct intel_soc_pmic {int /*<<< orphan*/  regmap; } ;
struct cht_wc_extcon_data {TYPE_1__* dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  edev; int /*<<< orphan*/  previous_cable; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHT_WC_PWRSRC_IRQ_MASK ; 
 unsigned long CHT_WC_PWRSRC_USBID_MASK ; 
 unsigned long CHT_WC_PWRSRC_VBUS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EXTCON_NONE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUX_SEL_PMIC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cht_wc_extcon_cables ; 
 int /*<<< orphan*/  FUNC2 (struct cht_wc_extcon_data*,int) ; 
 int /*<<< orphan*/  cht_wc_extcon_isr ; 
 int /*<<< orphan*/  FUNC3 (struct cht_wc_extcon_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct cht_wc_extcon_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cht_wc_extcon_data*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct cht_wc_extcon_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int) ; 
 struct intel_soc_pmic* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct cht_wc_extcon_data* FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cht_wc_extcon_data*) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct cht_wc_extcon_data*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct intel_soc_pmic *pmic = FUNC8(pdev->dev.parent);
	struct cht_wc_extcon_data *ext;
	unsigned long mask = ~(CHT_WC_PWRSRC_VBUS | CHT_WC_PWRSRC_USBID_MASK);
	int irq, ret;

	irq = FUNC13(pdev, 0);
	if (irq < 0)
		return irq;

	ext = FUNC11(&pdev->dev, sizeof(*ext), GFP_KERNEL);
	if (!ext)
		return -ENOMEM;

	ext->dev = &pdev->dev;
	ext->regmap = pmic->regmap;
	ext->previous_cable = EXTCON_NONE;

	/* Initialize extcon device */
	ext->edev = FUNC9(ext->dev, cht_wc_extcon_cables);
	if (FUNC0(ext->edev))
		return FUNC1(ext->edev);

	/*
	 * When a host-cable is detected the BIOS enables an external 5v boost
	 * converter to power connected devices there are 2 problems with this:
	 * 1) This gets seen by the external battery charger as a valid Vbus
	 *    supply and it then tries to feed Vsys from this creating a
	 *    feedback loop which causes aprox. 300 mA extra battery drain
	 *    (and unless we drive the external-charger-disable pin high it
	 *    also tries to charge the battery causing even more feedback).
	 * 2) This gets seen by the pwrsrc block as a SDP USB Vbus supply
	 * Since the external battery charger has its own 5v boost converter
	 * which does not have these issues, we simply turn the separate
	 * external 5v boost converter off and leave it off entirely.
	 */
	FUNC4(ext, false);

	/* Enable sw control */
	ret = FUNC6(ext, true);
	if (ret)
		goto disable_sw_control;

	/* Disable charging by external battery charger */
	FUNC2(ext, false);

	/* Register extcon device */
	ret = FUNC10(ext->dev, ext->edev);
	if (ret) {
		FUNC7(ext->dev, "Error registering extcon device: %d\n", ret);
		goto disable_sw_control;
	}

	/* Route D+ and D- to PMIC for initial charger detection */
	FUNC5(ext, MUX_SEL_PMIC);

	/* Get initial state */
	FUNC3(ext);

	ret = FUNC12(ext->dev, irq, NULL, cht_wc_extcon_isr,
					IRQF_ONESHOT, pdev->name, ext);
	if (ret) {
		FUNC7(ext->dev, "Error requesting interrupt: %d\n", ret);
		goto disable_sw_control;
	}

	/* Unmask irqs */
	ret = FUNC15(ext->regmap, CHT_WC_PWRSRC_IRQ_MASK, mask);
	if (ret) {
		FUNC7(ext->dev, "Error writing irq-mask: %d\n", ret);
		goto disable_sw_control;
	}

	FUNC14(pdev, ext);

	return 0;

disable_sw_control:
	FUNC6(ext, false);
	return ret;
}