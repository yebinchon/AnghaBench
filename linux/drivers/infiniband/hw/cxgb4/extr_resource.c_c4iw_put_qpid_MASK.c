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
typedef  int /*<<< orphan*/  u32 ;
struct c4iw_rdev {int dummy; } ;
struct c4iw_qid_list {int /*<<< orphan*/  entry; int /*<<< orphan*/  qid; } ;
struct c4iw_dev_ucontext {int /*<<< orphan*/  lock; int /*<<< orphan*/  qpids; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct c4iw_qid_list* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void FUNC5(struct c4iw_rdev *rdev, u32 qid,
		   struct c4iw_dev_ucontext *uctx)
{
	struct c4iw_qid_list *entry;

	entry = FUNC0(sizeof(*entry), GFP_KERNEL);
	if (!entry)
		return;
	FUNC4("qid 0x%x\n", qid);
	entry->qid = qid;
	FUNC2(&uctx->lock);
	FUNC1(&entry->entry, &uctx->qpids);
	FUNC3(&uctx->lock);
}