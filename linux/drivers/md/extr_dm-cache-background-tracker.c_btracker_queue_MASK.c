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
struct policy_work {int dummy; } ;
struct bt_work {struct policy_work work; int /*<<< orphan*/  list; } ;
struct background_tracker {int /*<<< orphan*/  queued; int /*<<< orphan*/  issued; int /*<<< orphan*/  work_cache; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct background_tracker*,struct bt_work*) ; 
 struct bt_work* FUNC1 (struct background_tracker*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bt_work*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct policy_work*,struct policy_work*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct background_tracker*,struct policy_work*,int) ; 

int FUNC6(struct background_tracker *b,
		   struct policy_work *work,
		   struct policy_work **pwork)
{
	struct bt_work *w;

	if (pwork)
		*pwork = NULL;

	w = FUNC1(b);
	if (!w)
		return -ENOMEM;

	FUNC4(&w->work, work, sizeof(*work));

	if (!FUNC0(b, w)) {
		/*
		 * There was a race, we'll just ignore this second
		 * bit of work for the same oblock.
		 */
		FUNC2(b->work_cache, w);
		return -EINVAL;
	}

	if (pwork) {
		*pwork = &w->work;
		FUNC3(&w->list, &b->issued);
	} else
		FUNC3(&w->list, &b->queued);
	FUNC5(b, &w->work, 1);

	return 0;
}