#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct workqueue_struct {int dummy; } ;
struct mmu_rb_ops {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  hlist; } ;
struct mmu_rb_handler {struct mm_struct* mm; TYPE_1__ mn; struct workqueue_struct* wq; int /*<<< orphan*/  lru_list; int /*<<< orphan*/  del_list; int /*<<< orphan*/  del_work; int /*<<< orphan*/  lock; void* ops_arg; struct mmu_rb_ops* ops; int /*<<< orphan*/  root; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_ROOT_CACHED ; 
 int /*<<< orphan*/  handle_remove ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_rb_handler*) ; 
 struct mmu_rb_handler* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,struct mm_struct*) ; 
 int /*<<< orphan*/  mn_opts ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(void *ops_arg, struct mm_struct *mm,
			 struct mmu_rb_ops *ops,
			 struct workqueue_struct *wq,
			 struct mmu_rb_handler **handler)
{
	struct mmu_rb_handler *handlr;
	int ret;

	handlr = FUNC4(sizeof(*handlr), GFP_KERNEL);
	if (!handlr)
		return -ENOMEM;

	handlr->root = RB_ROOT_CACHED;
	handlr->ops = ops;
	handlr->ops_arg = ops_arg;
	FUNC0(&handlr->mn.hlist);
	FUNC6(&handlr->lock);
	handlr->mn.ops = &mn_opts;
	handlr->mm = mm;
	FUNC2(&handlr->del_work, handle_remove);
	FUNC1(&handlr->del_list);
	FUNC1(&handlr->lru_list);
	handlr->wq = wq;

	ret = FUNC5(&handlr->mn, handlr->mm);
	if (ret) {
		FUNC3(handlr);
		return ret;
	}

	*handler = handlr;
	return 0;
}