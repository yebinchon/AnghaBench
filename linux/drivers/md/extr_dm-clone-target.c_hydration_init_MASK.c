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
struct dm_clone_region_hydration {unsigned long region_nr; int /*<<< orphan*/  h; int /*<<< orphan*/  list; scalar_t__ status; int /*<<< orphan*/  deferred_bios; int /*<<< orphan*/ * overwrite_bio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dm_clone_region_hydration *hd, unsigned long region_nr)
{
	hd->region_nr = region_nr;
	hd->overwrite_bio = NULL;
	FUNC2(&hd->deferred_bios);
	hd->status = 0;

	FUNC1(&hd->list);
	FUNC0(&hd->h);
}