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
struct s3c_hwmon {int /*<<< orphan*/  client; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/ * attrs; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct s3c_hwmon* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *dev)
{
	struct s3c_hwmon *hwmon = FUNC2(dev);
	int i;

	FUNC5(&dev->dev);

	for (i = 0; i < FUNC0(hwmon->attrs); i++)
		FUNC4(&dev->dev, &hwmon->attrs[i]);

	FUNC1(hwmon->hwmon_dev);
	FUNC3(hwmon->client);

	return 0;
}