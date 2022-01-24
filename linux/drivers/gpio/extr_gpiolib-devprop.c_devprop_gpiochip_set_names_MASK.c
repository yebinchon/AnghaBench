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
struct gpio_device {int ngpio; TYPE_1__* descs; int /*<<< orphan*/  dev; } ;
struct gpio_chip {struct gpio_device* gpiodev; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_2__ {char const* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct fwnode_handle const*,char*,char const**,int) ; 
 char** FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const**) ; 

void FUNC4(struct gpio_chip *chip,
				const struct fwnode_handle *fwnode)
{
	struct gpio_device *gdev = chip->gpiodev;
	const char **names;
	int ret, i;
	int count;

	count = FUNC1(fwnode, "gpio-line-names",
						  NULL, 0);
	if (count < 0)
		return;

	if (count > gdev->ngpio)
		count = gdev->ngpio;

	names = FUNC2(count, sizeof(*names), GFP_KERNEL);
	if (!names)
		return;

	ret = FUNC1(fwnode, "gpio-line-names",
						names, count);
	if (ret < 0) {
		FUNC0(&gdev->dev, "failed to read GPIO line names\n");
		FUNC3(names);
		return;
	}

	for (i = 0; i < count; i++)
		gdev->descs[i].name = names[i];

	FUNC3(names);
}