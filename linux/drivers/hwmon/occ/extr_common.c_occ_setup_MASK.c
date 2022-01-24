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
struct occ {int /*<<< orphan*/  bus_dev; int /*<<< orphan*/  hwmon; int /*<<< orphan*/ ** groups; int /*<<< orphan*/  group; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ESHUTDOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,struct occ*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct occ*) ; 
 int FUNC7 (struct occ*) ; 
 int FUNC8 (struct occ*) ; 
 int FUNC9 (struct occ*) ; 

int FUNC10(struct occ *occ, const char *name)
{
	int rc;

	FUNC5(&occ->lock);
	occ->groups[0] = &occ->group;

	/* no need to lock */
	rc = FUNC7(occ);
	if (rc == -ESHUTDOWN) {
		FUNC3(occ->bus_dev, "host is not ready\n");
		return rc;
	} else if (rc < 0) {
		FUNC2(occ->bus_dev, "failed to get OCC poll response: %d\n",
			rc);
		return rc;
	}

	FUNC6(occ);

	rc = FUNC8(occ);
	if (rc) {
		FUNC2(occ->bus_dev, "failed to setup sensor attrs: %d\n",
			rc);
		return rc;
	}

	occ->hwmon = FUNC4(occ->bus_dev, name,
							    occ, occ->groups);
	if (FUNC0(occ->hwmon)) {
		rc = FUNC1(occ->hwmon);
		FUNC2(occ->bus_dev, "failed to register hwmon device: %d\n",
			rc);
		return rc;
	}

	rc = FUNC9(occ);
	if (rc)
		FUNC2(occ->bus_dev, "failed to setup sysfs: %d\n", rc);

	return rc;
}