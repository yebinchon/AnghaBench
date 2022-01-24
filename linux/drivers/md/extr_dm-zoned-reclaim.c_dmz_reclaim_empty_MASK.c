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
struct dmz_reclaim {struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;
struct dm_zone {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC6 (struct dmz_metadata*,struct dm_zone*) ; 

__attribute__((used)) static void FUNC7(struct dmz_reclaim *zrc, struct dm_zone *dzone)
{
	struct dmz_metadata *zmd = zrc->metadata;

	FUNC1(zmd);
	FUNC2(zmd);
	FUNC6(zmd, dzone);
	FUNC5(dzone);
	FUNC0(zmd, dzone);
	FUNC4(zmd);
	FUNC3(zmd);
}