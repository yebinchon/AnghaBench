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
struct mrfld_gpio {int /*<<< orphan*/  dev; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct acpi_device* FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC4(struct mrfld_gpio *priv)
{
	struct acpi_device *adev;
	const char *name;

	adev = FUNC0("INTC1002", NULL, -1);
	if (adev) {
		name = FUNC3(priv->dev, FUNC1(adev), GFP_KERNEL);
		FUNC2(adev);
	} else {
		name = "pinctrl-merrifield";
	}

	return name;
}