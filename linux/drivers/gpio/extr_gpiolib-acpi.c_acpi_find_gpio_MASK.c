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
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
struct acpi_gpio_info {scalar_t__ gpioint; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  propname ;
typedef  enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device*) ; 
 int FUNC1 (char**) ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct gpio_desc* FUNC2 (struct gpio_desc*) ; 
 struct gpio_desc* FUNC3 (int /*<<< orphan*/ ) ; 
 int GPIOD_OUT_HIGH ; 
 int GPIOD_OUT_LOW ; 
 scalar_t__ FUNC4 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_device*,char const*) ; 
 struct gpio_desc* FUNC7 (struct acpi_device*,char*,unsigned int,struct acpi_gpio_info*) ; 
 int /*<<< orphan*/  FUNC8 (int*,struct acpi_gpio_info*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long*,struct acpi_gpio_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*) ; 
 char** gpio_suffixes ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char const*,...) ; 

struct gpio_desc *FUNC12(struct device *dev,
				 const char *con_id,
				 unsigned int idx,
				 enum gpiod_flags *dflags,
				 unsigned long *lookupflags)
{
	struct acpi_device *adev = FUNC0(dev);
	struct acpi_gpio_info info;
	struct gpio_desc *desc;
	char propname[32];
	int i;

	/* Try first from _DSD */
	for (i = 0; i < FUNC1(gpio_suffixes); i++) {
		if (con_id) {
			FUNC11(propname, sizeof(propname), "%s-%s",
				 con_id, gpio_suffixes[i]);
		} else {
			FUNC11(propname, sizeof(propname), "%s",
				 gpio_suffixes[i]);
		}

		desc = FUNC7(adev, propname, idx, &info);
		if (!FUNC4(desc))
			break;
		if (FUNC5(desc) == -EPROBE_DEFER)
			return FUNC2(desc);
	}

	/* Then from plain _CRS GPIOs */
	if (FUNC4(desc)) {
		if (!FUNC6(adev, con_id))
			return FUNC3(-ENOENT);

		desc = FUNC7(adev, NULL, idx, &info);
		if (FUNC4(desc))
			return desc;
	}

	if (info.gpioint &&
	    (*dflags == GPIOD_OUT_LOW || *dflags == GPIOD_OUT_HIGH)) {
		FUNC10(dev, "refusing GpioInt() entry when doing GPIOD_OUT_* lookup\n");
		return FUNC3(-ENOENT);
	}

	FUNC8(dflags, &info);
	FUNC9(lookupflags, &info);
	return desc;
}