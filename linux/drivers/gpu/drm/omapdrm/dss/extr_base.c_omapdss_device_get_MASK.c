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
struct omap_dss_device {int /*<<< orphan*/  owner; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

struct omap_dss_device *FUNC3(struct omap_dss_device *dssdev)
{
	if (!FUNC2(dssdev->owner))
		return NULL;

	if (FUNC0(dssdev->dev) == NULL) {
		FUNC1(dssdev->owner);
		return NULL;
	}

	return dssdev;
}