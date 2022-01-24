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
struct gpio_desc {int dummy; } ;
struct TYPE_2__ {struct acpi_device* adev; } ;
struct acpi_gpio_lookup {int index; struct gpio_desc* desc; TYPE_1__ info; int /*<<< orphan*/  active_low; int /*<<< orphan*/  pin_index; } ;
struct acpi_gpio_info {int dummy; } ;
struct acpi_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  lookup ;

/* Variables and functions */
 int ENODEV ; 
 struct gpio_desc* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int,struct acpi_gpio_lookup*) ; 
 int FUNC3 (struct acpi_gpio_lookup*,struct acpi_gpio_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_gpio_lookup*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct gpio_desc *FUNC7(struct acpi_device *adev,
					  const char *propname, int index,
					  struct acpi_gpio_info *info)
{
	struct acpi_gpio_lookup lookup;
	int ret;

	if (!adev)
		return FUNC0(-ENODEV);

	FUNC6(&lookup, 0, sizeof(lookup));
	lookup.index = index;

	if (propname) {
		FUNC4(&adev->dev, "GPIO: looking up %s\n", propname);

		ret = FUNC2(FUNC1(adev),
						propname, index, &lookup);
		if (ret)
			return FUNC0(ret);

		FUNC4(&adev->dev, "GPIO: _DSD returned %s %d %d %u\n",
			FUNC5(&lookup.info.adev->dev), lookup.index,
			lookup.pin_index, lookup.active_low);
	} else {
		FUNC4(&adev->dev, "GPIO: looking up %d in _CRS\n", index);
		lookup.info.adev = adev;
	}

	ret = FUNC3(&lookup, info);
	return ret ? FUNC0(ret) : lookup.desc;
}