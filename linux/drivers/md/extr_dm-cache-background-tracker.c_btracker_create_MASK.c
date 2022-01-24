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
struct background_tracker {unsigned int max_work; int /*<<< orphan*/  work_cache; int /*<<< orphan*/  pending; int /*<<< orphan*/  queued; int /*<<< orphan*/  issued; int /*<<< orphan*/  pending_demotes; int /*<<< orphan*/  pending_writebacks; int /*<<< orphan*/  pending_promotes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bt_work ; 
 int /*<<< orphan*/  FUNC4 (struct background_tracker*) ; 
 struct background_tracker* FUNC5 (int,int /*<<< orphan*/ ) ; 

struct background_tracker *FUNC6(unsigned max_work)
{
	struct background_tracker *b = FUNC5(sizeof(*b), GFP_KERNEL);

	if (!b) {
		FUNC0("couldn't create background_tracker");
		return NULL;
	}

	b->max_work = max_work;
	FUNC3(&b->pending_promotes, 0);
	FUNC3(&b->pending_writebacks, 0);
	FUNC3(&b->pending_demotes, 0);

	FUNC1(&b->issued);
	FUNC1(&b->queued);

	b->pending = RB_ROOT;
	b->work_cache = FUNC2(bt_work, 0);
	if (!b->work_cache) {
		FUNC0("couldn't create mempool for background work items");
		FUNC4(b);
		b = NULL;
	}

	return b;
}