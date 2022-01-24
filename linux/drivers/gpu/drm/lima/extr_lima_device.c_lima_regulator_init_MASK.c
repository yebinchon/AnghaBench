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
struct lima_device {int /*<<< orphan*/  dev; int /*<<< orphan*/ * regulator; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct lima_device *dev)
{
	int ret;

	dev->regulator = FUNC3(dev->dev, "mali");
	if (FUNC0(dev->regulator)) {
		ret = FUNC1(dev->regulator);
		dev->regulator = NULL;
		if (ret == -ENODEV)
			return 0;
		if (ret != -EPROBE_DEFER)
			FUNC2(dev->dev, "failed to get regulator: %d\n", ret);
		return ret;
	}

	ret = FUNC4(dev->regulator);
	if (ret < 0) {
		FUNC2(dev->dev, "failed to enable regulator: %d\n", ret);
		return ret;
	}

	return 0;
}