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
struct panfrost_device {scalar_t__ clock; scalar_t__ bus_clock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 unsigned long FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(struct panfrost_device *pfdev)
{
	int err;
	unsigned long rate;

	pfdev->clock = FUNC7(pfdev->dev, NULL);
	if (FUNC0(pfdev->clock)) {
		FUNC5(pfdev->dev, "get clock failed %ld\n", FUNC1(pfdev->clock));
		return FUNC1(pfdev->clock);
	}

	rate = FUNC3(pfdev->clock);
	FUNC6(pfdev->dev, "clock rate = %lu\n", rate);

	err = FUNC4(pfdev->clock);
	if (err)
		return err;

	pfdev->bus_clock = FUNC8(pfdev->dev, "bus");
	if (FUNC0(pfdev->bus_clock)) {
		FUNC5(pfdev->dev, "get bus_clock failed %ld\n",
			FUNC1(pfdev->bus_clock));
		return FUNC1(pfdev->bus_clock);
	}

	if (pfdev->bus_clock) {
		rate = FUNC3(pfdev->bus_clock);
		FUNC6(pfdev->dev, "bus_clock rate = %lu\n", rate);

		err = FUNC4(pfdev->bus_clock);
		if (err)
			goto disable_clock;
	}

	return 0;

disable_clock:
	FUNC2(pfdev->clock);

	return err;
}