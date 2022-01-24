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
struct occ {int last_error; int /*<<< orphan*/  lock; scalar_t__ last_update; } ;

/* Variables and functions */
 scalar_t__ OCC_UPDATE_FREQUENCY ; 
 scalar_t__ jiffies ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct occ*) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

int FUNC4(struct occ *occ)
{
	int rc = FUNC0(&occ->lock);

	if (rc)
		return rc;

	/* limit the maximum rate of polling the OCC */
	if (FUNC3(jiffies, occ->last_update + OCC_UPDATE_FREQUENCY)) {
		rc = FUNC2(occ);
		occ->last_update = jiffies;
	} else {
		rc = occ->last_error;
	}

	FUNC1(&occ->lock);
	return rc;
}