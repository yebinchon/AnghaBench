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
struct fwnode_handle {int dummy; } ;
struct acpi_gpio_lookup {int index; struct gpio_desc* desc; } ;
struct acpi_gpio_info {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  lookup ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 struct gpio_desc* FUNC0 (int) ; 
 struct gpio_desc* FUNC1 (struct acpi_device*,char const*,int,struct acpi_gpio_info*) ; 
 int FUNC2 (struct fwnode_handle*,char const*,int,struct acpi_gpio_lookup*) ; 
 int FUNC3 (struct acpi_gpio_lookup*,struct acpi_gpio_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_gpio_lookup*,int /*<<< orphan*/ ,int) ; 
 struct acpi_device* FUNC6 (struct fwnode_handle*) ; 

struct gpio_desc *FUNC7(struct fwnode_handle *fwnode,
				      const char *propname, int index,
				      struct acpi_gpio_info *info)
{
	struct acpi_gpio_lookup lookup;
	struct acpi_device *adev;
	int ret;

	adev = FUNC6(fwnode);
	if (adev)
		return FUNC1(adev, propname, index, info);

	if (!FUNC4(fwnode))
		return FUNC0(-ENODEV);

	if (!propname)
		return FUNC0(-EINVAL);

	FUNC5(&lookup, 0, sizeof(lookup));
	lookup.index = index;

	ret = FUNC2(fwnode, propname, index, &lookup);
	if (ret)
		return FUNC0(ret);

	ret = FUNC3(&lookup, info);
	return ret ? FUNC0(ret) : lookup.desc;
}