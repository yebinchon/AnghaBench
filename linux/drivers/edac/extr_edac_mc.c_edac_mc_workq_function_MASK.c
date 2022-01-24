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
struct work_struct {int dummy; } ;
struct mem_ctl_info {scalar_t__ op_state; int /*<<< orphan*/  work; int /*<<< orphan*/  (* edac_check ) (struct mem_ctl_info*) ;} ;
struct delayed_work {int dummy; } ;

/* Variables and functions */
 scalar_t__ EDAC_OPSTATE_POLL ; 
 scalar_t__ OP_RUNNING_POLL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ edac_op_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mem_ctls_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mem_ctl_info*) ; 
 struct delayed_work* FUNC6 (struct work_struct*) ; 
 struct mem_ctl_info* FUNC7 (struct delayed_work*) ; 

__attribute__((used)) static void FUNC8(struct work_struct *work_req)
{
	struct delayed_work *d_work = FUNC6(work_req);
	struct mem_ctl_info *mci = FUNC7(d_work);

	FUNC3(&mem_ctls_mutex);

	if (mci->op_state != OP_RUNNING_POLL) {
		FUNC4(&mem_ctls_mutex);
		return;
	}

	if (edac_op_state == EDAC_OPSTATE_POLL)
		mci->edac_check(mci);

	FUNC4(&mem_ctls_mutex);

	/* Queue ourselves again. */
	FUNC1(&mci->work, FUNC2(FUNC0()));
}