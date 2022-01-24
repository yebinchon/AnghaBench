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
struct srpt_rdma_ch {int /*<<< orphan*/  kref; int /*<<< orphan*/  release_work; TYPE_1__* qp; int /*<<< orphan*/  sess_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  qp_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_DISCONNECTED ; 
 int /*<<< orphan*/  CH_DRAINING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct srpt_rdma_ch*) ; 
 int /*<<< orphan*/  srpt_free_ch ; 
 scalar_t__ FUNC7 (struct srpt_rdma_ch*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct srpt_rdma_ch*) ; 

__attribute__((used)) static bool FUNC9(struct srpt_rdma_ch *ch)
{
	int ret;

	if (!FUNC7(ch, CH_DRAINING)) {
		FUNC3("%s: already closed\n", ch->sess_name);
		return false;
	}

	FUNC1(&ch->kref);

	ret = FUNC6(ch);
	if (ret < 0)
		FUNC4("%s-%d: changing queue pair into error state failed: %d\n",
		       ch->sess_name, ch->qp->qp_num, ret);

	ret = FUNC8(ch);
	if (ret < 0) {
		FUNC4("%s-%d: queuing zero-length write failed: %d\n",
		       ch->sess_name, ch->qp->qp_num, ret);
		if (FUNC7(ch, CH_DISCONNECTED))
			FUNC5(&ch->release_work);
		else
			FUNC0(true);
	}

	FUNC2(&ch->kref, srpt_free_ch);

	return true;
}