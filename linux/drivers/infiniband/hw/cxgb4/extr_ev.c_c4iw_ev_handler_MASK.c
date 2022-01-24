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
typedef  int /*<<< orphan*/  u32 ;
struct c4iw_dev {int /*<<< orphan*/  cqs; } ;
struct TYPE_2__ {int /*<<< orphan*/  cq_context; int /*<<< orphan*/  (* comp_handler ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct c4iw_cq {int /*<<< orphan*/  wait; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  comp_handler_lock; TYPE_1__ ibcq; int /*<<< orphan*/  cq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct c4iw_cq* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC11(struct c4iw_dev *dev, u32 qid)
{
	struct c4iw_cq *chp;
	unsigned long flag;

	FUNC9(&dev->cqs, flag);
	chp = FUNC8(&dev->cqs, qid);
	if (chp) {
		FUNC1(&chp->refcnt);
		FUNC10(&dev->cqs, flag);
		FUNC6(&chp->cq);
		FUNC3(&chp->comp_handler_lock, flag);
		(*chp->ibcq.comp_handler)(&chp->ibcq, chp->ibcq.cq_context);
		FUNC4(&chp->comp_handler_lock, flag);
		if (FUNC0(&chp->refcnt))
			FUNC7(&chp->wait);
	} else {
		FUNC2("unknown cqid 0x%x\n", qid);
		FUNC10(&dev->cqs, flag);
	}
	return 0;
}