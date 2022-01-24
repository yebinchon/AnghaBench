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
struct gpio_device {TYPE_1__* descs; int /*<<< orphan*/  dev; } ;
struct gpio_desc {int dummy; } ;
struct gpio_chip {int ngpio; int /*<<< orphan*/ * names; struct gpio_device* gpiodev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *gc)
{
	struct gpio_device *gdev = gc->gpiodev;
	int i;

	if (!gc->names)
		return 0;

	/* First check all names if they are unique */
	for (i = 0; i != gc->ngpio; ++i) {
		struct gpio_desc *gpio;

		gpio = FUNC1(gc->names[i]);
		if (gpio)
			FUNC0(&gdev->dev,
				 "Detected name collision for GPIO name '%s'\n",
				 gc->names[i]);
	}

	/* Then add all names to the GPIO descriptors */
	for (i = 0; i != gc->ngpio; ++i)
		gdev->descs[i].name = gc->names[i];

	return 0;
}