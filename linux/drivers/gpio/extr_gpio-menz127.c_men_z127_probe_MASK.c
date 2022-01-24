#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  set_config; } ;
struct men_z127_gpio {TYPE_1__* mem; int /*<<< orphan*/ * reg_base; TYPE_4__ gc; } ;
struct mcb_device_id {int dummy; } ;
struct device {int dummy; } ;
struct mcb_device {struct device dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int MEN_Z127_CTRL ; 
 int MEN_Z127_GPIODR ; 
 int MEN_Z127_PSR ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_4__*,struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 struct men_z127_gpio* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_4__*,struct men_z127_gpio*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 TYPE_1__* FUNC11 (struct mcb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mcb_device*,struct men_z127_gpio*) ; 
 int /*<<< orphan*/  men_z127_set_config ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct mcb_device *mdev,
			  const struct mcb_device_id *id)
{
	struct men_z127_gpio *men_z127_gpio;
	struct device *dev = &mdev->dev;
	int ret;

	men_z127_gpio = FUNC6(dev, sizeof(struct men_z127_gpio),
				     GFP_KERNEL);
	if (!men_z127_gpio)
		return -ENOMEM;

	men_z127_gpio->mem = FUNC11(mdev, FUNC5(dev));
	if (FUNC0(men_z127_gpio->mem)) {
		FUNC3(dev, "failed to request device memory");
		return FUNC1(men_z127_gpio->mem);
	}

	men_z127_gpio->reg_base = FUNC8(men_z127_gpio->mem->start,
					  FUNC13(men_z127_gpio->mem));
	if (men_z127_gpio->reg_base == NULL) {
		ret = -ENXIO;
		goto err_release;
	}

	FUNC12(mdev, men_z127_gpio);

	ret = FUNC2(&men_z127_gpio->gc, &mdev->dev, 4,
			 men_z127_gpio->reg_base + MEN_Z127_PSR,
			 men_z127_gpio->reg_base + MEN_Z127_CTRL,
			 NULL,
			 men_z127_gpio->reg_base + MEN_Z127_GPIODR,
			 NULL, 0);
	if (ret)
		goto err_unmap;

	men_z127_gpio->gc.set_config = men_z127_set_config;

	ret = FUNC7(&men_z127_gpio->gc, men_z127_gpio);
	if (ret) {
		FUNC3(dev, "failed to register MEN 16Z127 GPIO controller");
		goto err_unmap;
	}

	FUNC4(dev, "MEN 16Z127 GPIO driver registered");

	return 0;

err_unmap:
	FUNC9(men_z127_gpio->reg_base);
err_release:
	FUNC10(men_z127_gpio->mem);
	return ret;
}