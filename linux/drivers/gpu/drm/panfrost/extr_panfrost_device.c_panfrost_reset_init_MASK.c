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
struct panfrost_device {int /*<<< orphan*/  rstc; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct panfrost_device *pfdev)
{
	int err;

	pfdev->rstc = FUNC3(pfdev->dev, false, true);
	if (FUNC0(pfdev->rstc)) {
		FUNC2(pfdev->dev, "get reset failed %ld\n", FUNC1(pfdev->rstc));
		return FUNC1(pfdev->rstc);
	}

	err = FUNC4(pfdev->rstc);
	if (err)
		return err;

	return 0;
}