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
struct max77693_dev {int /*<<< orphan*/  i2c_muic; TYPE_1__* i2c; int /*<<< orphan*/  irq_data_muic; int /*<<< orphan*/  irq; int /*<<< orphan*/  regmap_muic; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_ADDR_MUIC ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct max77693_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max77843_muic_irq_chip ; 
 int /*<<< orphan*/  max77843_muic_regmap_config ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct max77693_dev *max77843)
{
	int ret;

	max77843->i2c_muic = FUNC4(max77843->i2c->adapter,
			I2C_ADDR_MUIC);
	if (FUNC0(max77843->i2c_muic)) {
		FUNC2(&max77843->i2c->dev,
				"Cannot allocate I2C device for MUIC\n");
		return FUNC1(max77843->i2c_muic);
	}

	FUNC5(max77843->i2c_muic, max77843);

	max77843->regmap_muic = FUNC3(max77843->i2c_muic,
			&max77843_muic_regmap_config);
	if (FUNC0(max77843->regmap_muic)) {
		ret = FUNC1(max77843->regmap_muic);
		goto err_muic_i2c;
	}

	ret = FUNC7(max77843->regmap_muic, max77843->irq,
			IRQF_TRIGGER_LOW | IRQF_ONESHOT | IRQF_SHARED,
			0, &max77843_muic_irq_chip, &max77843->irq_data_muic);
	if (ret < 0) {
		FUNC2(&max77843->i2c->dev, "Cannot add MUIC IRQ chip\n");
		goto err_muic_i2c;
	}

	return 0;

err_muic_i2c:
	FUNC6(max77843->i2c_muic);

	return ret;
}