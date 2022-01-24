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
struct hns_roce_ucontext {int /*<<< orphan*/  page_mutex; } ;
struct TYPE_3__ {TYPE_2__* user_page; } ;
struct hns_roce_db {TYPE_1__ u; } ;
struct TYPE_4__ {int /*<<< orphan*/  umem; int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct hns_roce_ucontext *context,
			    struct hns_roce_db *db)
{
	FUNC3(&context->page_mutex);

	FUNC5(&db->u.user_page->refcount);
	if (FUNC6(&db->u.user_page->refcount)) {
		FUNC2(&db->u.user_page->list);
		FUNC0(db->u.user_page->umem);
		FUNC1(db->u.user_page);
	}

	FUNC4(&context->page_mutex);
}