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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct fsa9480_usbsw {int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  edev; } ;

/* Variables and functions */
 int CON_MASK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FSA9480_REG_CTRL ; 
 int /*<<< orphan*/  FSA9480_REG_INT1_MASK ; 
 int /*<<< orphan*/  FSA9480_REG_INT2_MASK ; 
 int /*<<< orphan*/  FSA9480_REG_TIMING1 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INT1_MASK ; 
 int INT2_MASK ; 
 int INT_ATTACH ; 
 int INT_DETACH ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int TIMING1_ADC_500MS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct fsa9480_usbsw* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct fsa9480_usbsw*) ; 
 int /*<<< orphan*/  FUNC9 (struct fsa9480_usbsw*) ; 
 int /*<<< orphan*/  fsa9480_extcon_cable ; 
 int /*<<< orphan*/  fsa9480_irq_handler ; 
 int /*<<< orphan*/  fsa9480_regmap_config ; 
 int /*<<< orphan*/  FUNC10 (struct fsa9480_usbsw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct fsa9480_usbsw*) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct fsa9480_usbsw *info;
	int ret;

	if (!client->irq) {
		FUNC2(&client->dev, "no interrupt provided\n");
		return -EINVAL;
	}

	info = FUNC6(&client->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;
	info->dev = &client->dev;

	FUNC11(client, info);

	/* External connector */
	info->edev = FUNC4(info->dev,
					      fsa9480_extcon_cable);
	if (FUNC0(info->edev)) {
		FUNC2(info->dev, "failed to allocate memory for extcon\n");
		ret = -ENOMEM;
		return ret;
	}

	ret = FUNC5(info->dev, info->edev);
	if (ret) {
		FUNC2(info->dev, "failed to register extcon device\n");
		return ret;
	}

	info->regmap = FUNC7(client, &fsa9480_regmap_config);
	if (FUNC0(info->regmap)) {
		ret = FUNC1(info->regmap);
		FUNC2(info->dev, "failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	/* ADC Detect Time: 500ms */
	FUNC10(info, FSA9480_REG_TIMING1, TIMING1_ADC_500MS);

	/* configure automatic switching */
	FUNC10(info, FSA9480_REG_CTRL, CON_MASK);

	/* unmask interrupt (attach/detach only) */
	FUNC10(info, FSA9480_REG_INT1_MASK,
			  INT1_MASK & ~(INT_ATTACH | INT_DETACH));
	FUNC10(info, FSA9480_REG_INT2_MASK, INT2_MASK);

	ret = FUNC8(info->dev, client->irq, NULL,
					fsa9480_irq_handler,
					IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					"fsa9480", info);
	if (ret) {
		FUNC2(info->dev, "failed to request IRQ\n");
		return ret;
	}

	FUNC3(info->dev, true);
	FUNC9(info);

	return 0;
}