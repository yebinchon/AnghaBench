#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mc13xxx_buttons_platform_data {int b1on_flags; int b2on_flags; int b3on_flags; scalar_t__ b1on_key; scalar_t__ b2on_key; scalar_t__ b3on_key; } ;
struct mc13xxx {int dummy; } ;
struct mc13783_pwrb {scalar_t__* keymap; int /*<<< orphan*/  flags; struct mc13xxx* mc13783; struct input_dev* pwr; } ;
struct TYPE_5__ {TYPE_2__* parent; } ;
struct input_dev {char* name; char* phys; scalar_t__* keycode; int keycodesize; int /*<<< orphan*/  evbit; int /*<<< orphan*/  keycodemax; TYPE_1__ dev; int /*<<< orphan*/  keybit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ KEY_RESERVED ; 
 int MC13783_BUTTON_ENABLE ; 
 int MC13783_BUTTON_POL_INVERT ; 
 int MC13783_BUTTON_RESET_EN ; 
 int /*<<< orphan*/  MC13783_IRQ_ONOFD1 ; 
 int /*<<< orphan*/  MC13783_IRQ_ONOFD2 ; 
 int /*<<< orphan*/  MC13783_IRQ_ONOFD3 ; 
 int MC13783_POWER_CONTROL_2_ON1BDBNC ; 
 int MC13783_POWER_CONTROL_2_ON1BRSTEN ; 
 int MC13783_POWER_CONTROL_2_ON2BDBNC ; 
 int MC13783_POWER_CONTROL_2_ON2BRSTEN ; 
 int MC13783_POWER_CONTROL_2_ON3BDBNC ; 
 int MC13783_POWER_CONTROL_2_ON3BRSTEN ; 
 int /*<<< orphan*/  MC13783_PWRB_B1_POL_INVERT ; 
 int /*<<< orphan*/  MC13783_PWRB_B2_POL_INVERT ; 
 int /*<<< orphan*/  MC13783_PWRB_B3_POL_INVERT ; 
 int /*<<< orphan*/  MC13783_REG_POWER_CONTROL_2 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  button_irq ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 struct mc13xxx* FUNC4 (int /*<<< orphan*/ ) ; 
 struct mc13xxx_buttons_platform_data* FUNC5 (TYPE_2__*) ; 
 struct input_dev* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*) ; 
 int FUNC8 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mc13783_pwrb*) ; 
 struct mc13783_pwrb* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mc13xxx*,int /*<<< orphan*/ ,struct mc13783_pwrb*) ; 
 int FUNC12 (struct mc13xxx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mc13783_pwrb*) ; 
 int /*<<< orphan*/  FUNC13 (struct mc13xxx*) ; 
 int /*<<< orphan*/  FUNC14 (struct mc13xxx*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct mc13xxx*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct mc13783_pwrb*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	const struct mc13xxx_buttons_platform_data *pdata;
	struct mc13xxx *mc13783 = FUNC4(pdev->dev.parent);
	struct input_dev *pwr;
	struct mc13783_pwrb *priv;
	int err = 0;
	int reg = 0;

	pdata = FUNC5(&pdev->dev);
	if (!pdata) {
		FUNC3(&pdev->dev, "missing platform data\n");
		return -ENODEV;
	}

	pwr = FUNC6();
	if (!pwr) {
		FUNC2(&pdev->dev, "Can't allocate power button\n");
		return -ENOMEM;
	}

	priv = FUNC10(sizeof(*priv), GFP_KERNEL);
	if (!priv) {
		err = -ENOMEM;
		FUNC2(&pdev->dev, "Can't allocate power button\n");
		goto free_input_dev;
	}

	reg |= (pdata->b1on_flags & 0x3) << MC13783_POWER_CONTROL_2_ON1BDBNC;
	reg |= (pdata->b2on_flags & 0x3) << MC13783_POWER_CONTROL_2_ON2BDBNC;
	reg |= (pdata->b3on_flags & 0x3) << MC13783_POWER_CONTROL_2_ON3BDBNC;

	priv->pwr = pwr;
	priv->mc13783 = mc13783;

	FUNC13(mc13783);

	if (pdata->b1on_flags & MC13783_BUTTON_ENABLE) {
		priv->keymap[0] = pdata->b1on_key;
		if (pdata->b1on_key != KEY_RESERVED)
			FUNC1(pdata->b1on_key, pwr->keybit);

		if (pdata->b1on_flags & MC13783_BUTTON_POL_INVERT)
			priv->flags |= MC13783_PWRB_B1_POL_INVERT;

		if (pdata->b1on_flags & MC13783_BUTTON_RESET_EN)
			reg |= MC13783_POWER_CONTROL_2_ON1BRSTEN;

		err = FUNC12(mc13783, MC13783_IRQ_ONOFD1,
					  button_irq, "b1on", priv);
		if (err) {
			FUNC2(&pdev->dev, "Can't request irq\n");
			goto free_priv;
		}
	}

	if (pdata->b2on_flags & MC13783_BUTTON_ENABLE) {
		priv->keymap[1] = pdata->b2on_key;
		if (pdata->b2on_key != KEY_RESERVED)
			FUNC1(pdata->b2on_key, pwr->keybit);

		if (pdata->b2on_flags & MC13783_BUTTON_POL_INVERT)
			priv->flags |= MC13783_PWRB_B2_POL_INVERT;

		if (pdata->b2on_flags & MC13783_BUTTON_RESET_EN)
			reg |= MC13783_POWER_CONTROL_2_ON2BRSTEN;

		err = FUNC12(mc13783, MC13783_IRQ_ONOFD2,
					  button_irq, "b2on", priv);
		if (err) {
			FUNC2(&pdev->dev, "Can't request irq\n");
			goto free_irq_b1;
		}
	}

	if (pdata->b3on_flags & MC13783_BUTTON_ENABLE) {
		priv->keymap[2] = pdata->b3on_key;
		if (pdata->b3on_key != KEY_RESERVED)
			FUNC1(pdata->b3on_key, pwr->keybit);

		if (pdata->b3on_flags & MC13783_BUTTON_POL_INVERT)
			priv->flags |= MC13783_PWRB_B3_POL_INVERT;

		if (pdata->b3on_flags & MC13783_BUTTON_RESET_EN)
			reg |= MC13783_POWER_CONTROL_2_ON3BRSTEN;

		err = FUNC12(mc13783, MC13783_IRQ_ONOFD3,
					  button_irq, "b3on", priv);
		if (err) {
			FUNC2(&pdev->dev, "Can't request irq: %d\n", err);
			goto free_irq_b2;
		}
	}

	FUNC14(mc13783, MC13783_REG_POWER_CONTROL_2, 0x3FE, reg);

	FUNC15(mc13783);

	pwr->name = "mc13783_pwrbutton";
	pwr->phys = "mc13783_pwrbutton/input0";
	pwr->dev.parent = &pdev->dev;

	pwr->keycode = priv->keymap;
	pwr->keycodemax = FUNC0(priv->keymap);
	pwr->keycodesize = sizeof(priv->keymap[0]);
	FUNC1(EV_KEY, pwr->evbit);

	err = FUNC8(pwr);
	if (err) {
		FUNC2(&pdev->dev, "Can't register power button: %d\n", err);
		goto free_irq;
	}

	FUNC16(pdev, priv);

	return 0;

free_irq:
	FUNC13(mc13783);

	if (pdata->b3on_flags & MC13783_BUTTON_ENABLE)
		FUNC11(mc13783, MC13783_IRQ_ONOFD3, priv);

free_irq_b2:
	if (pdata->b2on_flags & MC13783_BUTTON_ENABLE)
		FUNC11(mc13783, MC13783_IRQ_ONOFD2, priv);

free_irq_b1:
	if (pdata->b1on_flags & MC13783_BUTTON_ENABLE)
		FUNC11(mc13783, MC13783_IRQ_ONOFD1, priv);

free_priv:
	FUNC15(mc13783);
	FUNC9(priv);

free_input_dev:
	FUNC7(pwr);

	return err;
}