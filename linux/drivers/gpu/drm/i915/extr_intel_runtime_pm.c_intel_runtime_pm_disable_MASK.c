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
struct intel_runtime_pm {int /*<<< orphan*/  available; struct device* kdev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

void FUNC4(struct intel_runtime_pm *rpm)
{
	struct device *kdev = rpm->kdev;

	/* Transfer rpm ownership back to core */
	FUNC0(FUNC2(kdev) < 0,
	     "Failed to pass rpm ownership back to core\n");

	FUNC1(kdev);

	if (!rpm->available)
		FUNC3(kdev);
}