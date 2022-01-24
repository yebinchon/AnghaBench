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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int dummy; } ;
struct gpio_chip {int ngpio; int /*<<< orphan*/  of_node; } ;
struct bcm_kona_gpio_bank {int id; scalar_t__ irq; struct bcm_kona_gpio* kona_gpio; } ;
struct bcm_kona_gpio {int num_bank; int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  lock; struct bcm_kona_gpio_bank* banks; int /*<<< orphan*/  reg_base; struct platform_device* pdev; struct gpio_chip gpio_chip; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPIO_MAX_BANK_NUM ; 
 int GPIO_PER_BANK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcm_kona_gpio_irq_handler ; 
 int /*<<< orphan*/  bcm_kona_gpio_of_match ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_kona_gpio*) ; 
 int /*<<< orphan*/  bcm_kona_irq_ops ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (struct device*,struct gpio_chip*,struct bcm_kona_gpio*) ; 
 struct bcm_kona_gpio_bank* FUNC5 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct bcm_kona_gpio* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct bcm_kona_gpio*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,struct bcm_kona_gpio_bank*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC12 (int /*<<< orphan*/ ,struct device*) ; 
 scalar_t__ FUNC13 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct bcm_kona_gpio*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct gpio_chip template_chip ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	const struct of_device_id *match;
	struct bcm_kona_gpio_bank *bank;
	struct bcm_kona_gpio *kona_gpio;
	struct gpio_chip *chip;
	int ret;
	int i;

	match = FUNC12(bcm_kona_gpio_of_match, dev);
	if (!match) {
		FUNC2(dev, "Failed to find gpio controller\n");
		return -ENODEV;
	}

	kona_gpio = FUNC6(dev, sizeof(*kona_gpio), GFP_KERNEL);
	if (!kona_gpio)
		return -ENOMEM;

	kona_gpio->gpio_chip = template_chip;
	chip = &kona_gpio->gpio_chip;
	kona_gpio->num_bank = FUNC11(dev->of_node);
	if (kona_gpio->num_bank == 0) {
		FUNC2(dev, "Couldn't determine # GPIO banks\n");
		return -ENOENT;
	}
	if (kona_gpio->num_bank > GPIO_MAX_BANK_NUM) {
		FUNC2(dev, "Too many GPIO banks configured (max=%d)\n",
			GPIO_MAX_BANK_NUM);
		return -ENXIO;
	}
	kona_gpio->banks = FUNC5(dev,
					kona_gpio->num_bank,
					sizeof(*kona_gpio->banks),
					GFP_KERNEL);
	if (!kona_gpio->banks)
		return -ENOMEM;

	kona_gpio->pdev = pdev;
	FUNC14(pdev, kona_gpio);
	chip->of_node = dev->of_node;
	chip->ngpio = kona_gpio->num_bank * GPIO_PER_BANK;

	kona_gpio->irq_domain = FUNC8(dev->of_node,
						      chip->ngpio,
						      &bcm_kona_irq_ops,
						      kona_gpio);
	if (!kona_gpio->irq_domain) {
		FUNC2(dev, "Couldn't allocate IRQ domain\n");
		return -ENXIO;
	}

	kona_gpio->reg_base = FUNC7(pdev, 0);
	if (FUNC0(kona_gpio->reg_base)) {
		ret = -ENXIO;
		goto err_irq_domain;
	}

	for (i = 0; i < kona_gpio->num_bank; i++) {
		bank = &kona_gpio->banks[i];
		bank->id = i;
		bank->irq = FUNC13(pdev, i);
		bank->kona_gpio = kona_gpio;
		if (bank->irq < 0) {
			FUNC2(dev, "Couldn't get IRQ for bank %d", i);
			ret = -ENOENT;
			goto err_irq_domain;
		}
	}

	FUNC3(&pdev->dev, "Setting up Kona GPIO\n");

	FUNC1(kona_gpio);

	ret = FUNC4(dev, chip, kona_gpio);
	if (ret < 0) {
		FUNC2(dev, "Couldn't add GPIO chip -- %d\n", ret);
		goto err_irq_domain;
	}
	for (i = 0; i < kona_gpio->num_bank; i++) {
		bank = &kona_gpio->banks[i];
		FUNC10(bank->irq,
						 bcm_kona_gpio_irq_handler,
						 bank);
	}

	FUNC15(&kona_gpio->lock);

	return 0;

err_irq_domain:
	FUNC9(kona_gpio->irq_domain);

	return ret;
}