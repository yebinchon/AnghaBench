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
struct gpio_mockup_dbgfs_private {int offset; int /*<<< orphan*/ * desc; struct gpio_mockup_chip* chip; } ;
struct gpio_chip {int ngpio; TYPE_1__* gpiodev; } ;
struct gpio_mockup_chip {int /*<<< orphan*/  dbg_dir; struct gpio_chip gc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * descs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,struct gpio_mockup_dbgfs_private*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (struct device*,int /*<<< orphan*/ ,char*,int) ; 
 struct gpio_mockup_dbgfs_private* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpio_mockup_dbg_dir ; 
 int /*<<< orphan*/  gpio_mockup_debugfs_ops ; 

__attribute__((used)) static void FUNC5(struct device *dev,
				      struct gpio_mockup_chip *chip)
{
	struct gpio_mockup_dbgfs_private *priv;
	struct gpio_chip *gc;
	const char *devname;
	char *name;
	int i;

	gc = &chip->gc;
	devname = FUNC2(&gc->gpiodev->dev);

	chip->dbg_dir = FUNC0(devname, gpio_mockup_dbg_dir);

	for (i = 0; i < gc->ngpio; i++) {
		name = FUNC3(dev, GFP_KERNEL, "%d", i);
		if (!name)
			return;

		priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
		if (!priv)
			return;

		priv->chip = chip;
		priv->offset = i;
		priv->desc = &gc->gpiodev->descs[i];

		FUNC1(name, 0200, chip->dbg_dir, priv,
				    &gpio_mockup_debugfs_ops);
	}

	return;
}