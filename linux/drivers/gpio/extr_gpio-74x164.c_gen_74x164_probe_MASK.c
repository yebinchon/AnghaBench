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
typedef  int u32 ;
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; int /*<<< orphan*/  modalias; } ;
struct TYPE_2__ {int base; int ngpio; int can_sleep; int /*<<< orphan*/  owner; int /*<<< orphan*/ * parent; int /*<<< orphan*/  set_multiple; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  label; } ;
struct gen_74x164_chip {int registers; int /*<<< orphan*/  lock; TYPE_1__ gpio_chip; int /*<<< orphan*/  gpiod_oe; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int GEN_74X164_NUMBER_GPIOS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (struct gen_74x164_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct gen_74x164_chip* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gen_74x164_direction_output ; 
 int /*<<< orphan*/  gen_74x164_get_value ; 
 int /*<<< orphan*/  gen_74x164_set_multiple ; 
 int /*<<< orphan*/  gen_74x164_set_value ; 
 int FUNC7 (TYPE_1__*,struct gen_74x164_chip*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct gen_74x164_chip*) ; 
 int FUNC12 (struct spi_device*) ; 

__attribute__((used)) static int FUNC13(struct spi_device *spi)
{
	struct gen_74x164_chip *chip;
	u32 nregs;
	int ret;

	/*
	 * bits_per_word cannot be configured in platform data
	 */
	spi->bits_per_word = 8;

	ret = FUNC12(spi);
	if (ret < 0)
		return ret;

	ret = FUNC4(&spi->dev, "registers-number", &nregs);
	if (ret) {
		FUNC3(&spi->dev, "Missing 'registers-number' property.\n");
		return -EINVAL;
	}

	chip = FUNC6(&spi->dev, sizeof(*chip) + nregs, GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->gpiod_oe = FUNC5(&spi->dev, "enable",
						 GPIOD_OUT_LOW);
	if (FUNC0(chip->gpiod_oe))
		return FUNC1(chip->gpiod_oe);

	FUNC8(chip->gpiod_oe, 1);

	FUNC11(spi, chip);

	chip->gpio_chip.label = spi->modalias;
	chip->gpio_chip.direction_output = gen_74x164_direction_output;
	chip->gpio_chip.get = gen_74x164_get_value;
	chip->gpio_chip.set = gen_74x164_set_value;
	chip->gpio_chip.set_multiple = gen_74x164_set_multiple;
	chip->gpio_chip.base = -1;

	chip->registers = nregs;
	chip->gpio_chip.ngpio = GEN_74X164_NUMBER_GPIOS * chip->registers;

	chip->gpio_chip.can_sleep = true;
	chip->gpio_chip.parent = &spi->dev;
	chip->gpio_chip.owner = THIS_MODULE;

	FUNC10(&chip->lock);

	ret = FUNC2(chip);
	if (ret) {
		FUNC3(&spi->dev, "Failed writing: %d\n", ret);
		goto exit_destroy;
	}

	ret = FUNC7(&chip->gpio_chip, chip);
	if (!ret)
		return 0;

exit_destroy:
	FUNC9(&chip->lock);

	return ret;
}