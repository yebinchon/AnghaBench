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
struct list_head {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 int FUNC3 (struct acpi_device*,struct list_head*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct acpi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2c_acpi_add_resource ; 

int FUNC5(struct i2c_client *client)
{
	struct acpi_device *adev = FUNC0(&client->dev);
	struct list_head resource_list;
	int irq = -ENOENT;
	int ret;

	FUNC1(&resource_list);

	ret = FUNC3(adev, &resource_list,
				     i2c_acpi_add_resource, &irq);
	if (ret < 0)
		return ret;

	FUNC2(&resource_list);

	if (irq == -ENOENT)
		irq = FUNC4(adev, 0);

	return irq;
}