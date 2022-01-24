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
struct md_rdev {int /*<<< orphan*/  kobj; TYPE_1__* bdev; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AutoDetected ; 
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct md_rdev*) ; 

__attribute__((used)) static void FUNC7(struct md_rdev *rdev)
{
	char b[BDEVNAME_SIZE];

	FUNC4("md: export_rdev(%s)\n", FUNC0(rdev->bdev,b));
	FUNC3(rdev);
#ifndef MODULE
	if (FUNC5(AutoDetected, &rdev->flags))
		FUNC2(rdev->bdev->bd_dev);
#endif
	FUNC6(rdev);
	FUNC1(&rdev->kobj);
}