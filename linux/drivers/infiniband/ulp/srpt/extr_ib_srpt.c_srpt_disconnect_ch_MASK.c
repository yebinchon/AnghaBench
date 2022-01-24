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
struct TYPE_4__ {int /*<<< orphan*/  cm_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  cm_id; } ;
struct srpt_rdma_ch {TYPE_2__ ib_cm; TYPE_1__ rdma_cm; scalar_t__ using_rdma_cm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_DISCONNECTING ; 
 int ENOTCONN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct srpt_rdma_ch*) ; 
 int /*<<< orphan*/  FUNC4 (struct srpt_rdma_ch*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct srpt_rdma_ch *ch)
{
	int ret;

	if (!FUNC4(ch, CH_DISCONNECTING))
		return -ENOTCONN;

	if (ch->using_rdma_cm) {
		ret = FUNC2(ch->rdma_cm.cm_id);
	} else {
		ret = FUNC1(ch->ib_cm.cm_id, NULL, 0);
		if (ret < 0)
			ret = FUNC0(ch->ib_cm.cm_id, NULL, 0);
	}

	if (ret < 0 && FUNC3(ch))
		ret = 0;

	return ret;
}