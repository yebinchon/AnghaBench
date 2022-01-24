#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct list_head {TYPE_2__* prev; TYPE_1__* next; } ;
struct dm_writecache {int /*<<< orphan*/  dev; int /*<<< orphan*/  endio_list_lock; struct list_head endio_list; } ;
struct TYPE_4__ {struct list_head* next; } ;
struct TYPE_3__ {struct list_head* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct dm_writecache*) ; 
 scalar_t__ FUNC2 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_writecache*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_writecache*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC13 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC14 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC15 (struct dm_writecache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct dm_writecache*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(void *data)
{
	struct dm_writecache *wc = data;

	while (1) {
		struct list_head list;

		FUNC7(&wc->endio_list_lock);
		if (!FUNC6(&wc->endio_list))
			goto pop_from_list;
		FUNC10(TASK_INTERRUPTIBLE);
		FUNC8(&wc->endio_list_lock);

		if (FUNC11(FUNC5())) {
			FUNC10(TASK_RUNNING);
			break;
		}

		FUNC9();

		continue;

pop_from_list:
		list = wc->endio_list;
		list.next->prev = list.prev->next = &list;
		FUNC0(&wc->endio_list);
		FUNC8(&wc->endio_list_lock);

		if (!FUNC1(wc))
			FUNC15(wc, wc->dev);

		FUNC12(wc);

		if (FUNC2(wc)) {
			FUNC3(wc, &list);
		} else {
			FUNC4(wc, &list);
			FUNC16(wc, READ);
		}

		FUNC14(wc);

		FUNC13(wc);
	}

	return 0;
}