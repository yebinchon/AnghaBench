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
struct st_uvis25_hw {TYPE_2__* trig; int /*<<< orphan*/  irq; int /*<<< orphan*/  regmap; } ;
struct iio_dev {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device* parent; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 unsigned long IRQF_ONESHOT ; 
#define  IRQF_TRIGGER_FALLING 131 
#define  IRQF_TRIGGER_HIGH 130 
#define  IRQF_TRIGGER_LOW 129 
#define  IRQF_TRIGGER_RISING 128 
 int /*<<< orphan*/  ST_UVIS25_REG_CTRL3_ADDR ; 
 int /*<<< orphan*/  ST_UVIS25_REG_HL_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned long) ; 
 TYPE_2__* FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,TYPE_2__*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct st_uvis25_hw*) ; 
 struct st_uvis25_hw* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 struct device* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  st_uvis25_trigger_handler_thread ; 

__attribute__((used)) static int FUNC11(struct iio_dev *iio_dev)
{
	struct st_uvis25_hw *hw = FUNC5(iio_dev);
	struct device *dev = FUNC9(hw->regmap);
	bool irq_active_low = false;
	unsigned long irq_type;
	int err;

	irq_type = FUNC8(FUNC7(hw->irq));

	switch (irq_type) {
	case IRQF_TRIGGER_HIGH:
	case IRQF_TRIGGER_RISING:
		break;
	case IRQF_TRIGGER_LOW:
	case IRQF_TRIGGER_FALLING:
		irq_active_low = true;
		break;
	default:
		FUNC1(dev, "mode %lx unsupported\n", irq_type);
		return -EINVAL;
	}

	err = FUNC10(hw->regmap, ST_UVIS25_REG_CTRL3_ADDR,
				 ST_UVIS25_REG_HL_MASK, irq_active_low);
	if (err < 0)
		return err;

	err = FUNC4(dev, hw->irq, NULL,
					st_uvis25_trigger_handler_thread,
					irq_type | IRQF_ONESHOT,
					iio_dev->name, hw);
	if (err) {
		FUNC0(dev, "failed to request trigger irq %d\n",
			hw->irq);
		return err;
	}

	hw->trig = FUNC2(dev, "%s-trigger",
					  iio_dev->name);
	if (!hw->trig)
		return -ENOMEM;

	FUNC6(hw->trig, iio_dev);
	hw->trig->dev.parent = dev;

	return FUNC3(dev, hw->trig);
}