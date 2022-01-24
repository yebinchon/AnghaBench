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
struct dmz_metadata {int dummy; } ;
struct dm_zone {struct dm_zone* bzone; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmz_metadata*,struct dm_zone*) ; 
 scalar_t__ FUNC2 (struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC5 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC6 (struct dmz_metadata*,struct dm_zone*) ; 
 scalar_t__ FUNC7 (struct dm_zone*) ; 

void FUNC8(struct dmz_metadata *zmd, struct dm_zone *dzone)
{
	struct dm_zone *bzone;

	FUNC3(zmd);

	bzone = dzone->bzone;
	if (bzone) {
		if (FUNC7(bzone))
			FUNC4(zmd, bzone);
		else {
			/* Empty buffer zone: reclaim it */
			FUNC6(zmd, bzone);
			FUNC1(zmd, bzone);
			bzone = NULL;
		}
	}

	/* Deactivate the data zone */
	FUNC0(dzone);
	if (FUNC2(dzone) || bzone || FUNC7(dzone))
		FUNC4(zmd, dzone);
	else {
		/* Unbuffered inactive empty data zone: reclaim it */
		FUNC6(zmd, dzone);
		FUNC1(zmd, dzone);
	}

	FUNC5(zmd);
}