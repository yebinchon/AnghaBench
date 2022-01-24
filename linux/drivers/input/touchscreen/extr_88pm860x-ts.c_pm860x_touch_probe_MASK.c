#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct pm860x_touch_pdata {int gpadc_prebias; int slot_cycle; int off_scale; int sw_cal; int tsi_prebias; int pen_prebias; int pen_prechg; int res_x; } ;
struct pm860x_touch {int irq; int res_x; TYPE_3__* idev; struct i2c_client* i2c; struct pm860x_chip* chip; } ;
struct pm860x_chip {scalar_t__ id; TYPE_6__* dev; struct i2c_client* companion; struct i2c_client* client; } ;
struct TYPE_15__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_6__ dev; } ;
struct i2c_client {int dummy; } ;
struct TYPE_13__ {TYPE_6__* parent; } ;
struct TYPE_12__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_14__ {char* name; char* phys; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  absbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_2__ dev; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int ACCURATE_BIT ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_I2C ; 
 scalar_t__ CHIP_PM8607 ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_SYN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  PM8607_GPADC_EN ; 
 int /*<<< orphan*/  PM8607_GPADC_MISC1 ; 
 int PM8607_GPADC_OFF_SCALE_MASK ; 
 int PM8607_GPADC_PREBIAS_MASK ; 
 int PM8607_GPADC_SLOT_CYCLE_MASK ; 
 int PM8607_GPADC_SW_CAL_MASK ; 
 int /*<<< orphan*/  PM8607_PD_PREBIAS ; 
 int PM8607_PD_PREBIAS_MASK ; 
 int PM8607_PD_PRECHG_MASK ; 
 int /*<<< orphan*/  PM8607_TSI_PREBIAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,char*) ; 
 struct pm860x_chip* FUNC2 (int /*<<< orphan*/ ) ; 
 struct pm860x_touch_pdata* FUNC3 (TYPE_6__*) ; 
 TYPE_3__* FUNC4 (TYPE_6__*) ; 
 struct pm860x_touch* FUNC5 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_6__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pm860x_touch*) ; 
 int FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,struct pm860x_touch*) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pm860x_touch_close ; 
 scalar_t__ FUNC13 (struct platform_device*,struct pm860x_chip*,int*) ; 
 int /*<<< orphan*/  pm860x_touch_handler ; 
 int /*<<< orphan*/  pm860x_touch_open ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct pm860x_chip *chip = FUNC2(pdev->dev.parent);
	struct pm860x_touch_pdata *pdata = FUNC3(&pdev->dev);
	struct pm860x_touch *touch;
	struct i2c_client *i2c = (chip->id == CHIP_PM8607) ? chip->client \
				 : chip->companion;
	int irq, ret, res_x = 0, data = 0;

	irq = FUNC10(pdev, 0);
	if (irq < 0)
		return -EINVAL;

	if (FUNC13(pdev, chip, &res_x)) {
		if (pdata) {
			/* set GPADC MISC1 register */
			data = 0;
			data |= (pdata->gpadc_prebias << 1)
				& PM8607_GPADC_PREBIAS_MASK;
			data |= (pdata->slot_cycle << 3)
				& PM8607_GPADC_SLOT_CYCLE_MASK;
			data |= (pdata->off_scale << 5)
				& PM8607_GPADC_OFF_SCALE_MASK;
			data |= (pdata->sw_cal << 7)
				& PM8607_GPADC_SW_CAL_MASK;
			if (data) {
				ret = FUNC11(i2c,
					PM8607_GPADC_MISC1, data);
				if (ret < 0)
					return -EINVAL;
			}
			/* set tsi prebias time */
			if (pdata->tsi_prebias) {
				data = pdata->tsi_prebias;
				ret = FUNC11(i2c,
					PM8607_TSI_PREBIAS, data);
				if (ret < 0)
					return -EINVAL;
			}
			/* set prebias & prechg time of pen detect */
			data = 0;
			data |= pdata->pen_prebias
				& PM8607_PD_PREBIAS_MASK;
			data |= (pdata->pen_prechg << 5)
				& PM8607_PD_PRECHG_MASK;
			if (data) {
				ret = FUNC11(i2c,
					PM8607_PD_PREBIAS, data);
				if (ret < 0)
					return -EINVAL;
			}
			res_x = pdata->res_x;
		} else {
			FUNC1(&pdev->dev, "failed to get platform data\n");
			return -EINVAL;
		}
	}
	/* enable GPADC */
	ret = FUNC12(i2c, PM8607_GPADC_MISC1, PM8607_GPADC_EN,
			      PM8607_GPADC_EN);
	if (ret)
		return ret;

	touch = FUNC5(&pdev->dev, sizeof(struct pm860x_touch),
			     GFP_KERNEL);
	if (!touch)
		return -ENOMEM;

	touch->idev = FUNC4(&pdev->dev);
	if (!touch->idev) {
		FUNC1(&pdev->dev, "Failed to allocate input device!\n");
		return -ENOMEM;
	}

	touch->idev->name = "88pm860x-touch";
	touch->idev->phys = "88pm860x/input0";
	touch->idev->id.bustype = BUS_I2C;
	touch->idev->dev.parent = &pdev->dev;
	touch->idev->open = pm860x_touch_open;
	touch->idev->close = pm860x_touch_close;
	touch->chip = chip;
	touch->i2c = i2c;
	touch->irq = irq;
	touch->res_x = res_x;
	FUNC9(touch->idev, touch);

	ret = FUNC6(&pdev->dev, touch->irq, NULL,
					pm860x_touch_handler, IRQF_ONESHOT,
					"touch", touch);
	if (ret < 0)
		return ret;

	FUNC0(EV_ABS, touch->idev->evbit);
	FUNC0(ABS_X, touch->idev->absbit);
	FUNC0(ABS_Y, touch->idev->absbit);
	FUNC0(ABS_PRESSURE, touch->idev->absbit);
	FUNC0(EV_SYN, touch->idev->evbit);
	FUNC0(EV_KEY, touch->idev->evbit);
	FUNC0(BTN_TOUCH, touch->idev->keybit);

	FUNC8(touch->idev, ABS_X, 0, 1 << ACCURATE_BIT, 0, 0);
	FUNC8(touch->idev, ABS_Y, 0, 1 << ACCURATE_BIT, 0, 0);
	FUNC8(touch->idev, ABS_PRESSURE, 0, 1 << ACCURATE_BIT,
				0, 0);

	ret = FUNC7(touch->idev);
	if (ret < 0) {
		FUNC1(chip->dev, "Failed to register touch!\n");
		return ret;
	}

	return 0;
}