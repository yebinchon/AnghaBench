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
struct sensor_device_attribute_2 {int /*<<< orphan*/  dev_attr; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct platform_device *pdev,
	struct sensor_device_attribute_2 *attr, int count)
{
	int err, i;

	for (i = 0; i < count; i++) {
		err = FUNC0(&pdev->dev, &attr[i].dev_attr);
		if (err)
			return err;
	}
	return 0;
}