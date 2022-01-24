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
struct srpt_rdma_ch {int /*<<< orphan*/  pkey; TYPE_2__* sport; int /*<<< orphan*/  using_rdma_cm; } ;
struct ib_qp_attr {int /*<<< orphan*/  pkey_index; int /*<<< orphan*/  port_num; int /*<<< orphan*/  qp_access_flags; int /*<<< orphan*/  qp_state; } ;
struct ib_qp {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; TYPE_1__* sdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_ACCESS_LOCAL_WRITE ; 
 int /*<<< orphan*/  IB_QPS_INIT ; 
 int IB_QP_ACCESS_FLAGS ; 
 int IB_QP_PKEY_INDEX ; 
 int IB_QP_PORT ; 
 int IB_QP_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ib_qp*,struct ib_qp_attr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_qp_attr*) ; 
 struct ib_qp_attr* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct srpt_rdma_ch *ch, struct ib_qp *qp)
{
	struct ib_qp_attr *attr;
	int ret;

	FUNC0(ch->using_rdma_cm);

	attr = FUNC4(sizeof(*attr), GFP_KERNEL);
	if (!attr)
		return -ENOMEM;

	attr->qp_state = IB_QPS_INIT;
	attr->qp_access_flags = IB_ACCESS_LOCAL_WRITE;
	attr->port_num = ch->sport->port;

	ret = FUNC1(ch->sport->sdev->device, ch->sport->port,
				  ch->pkey, &attr->pkey_index);
	if (ret < 0)
		FUNC5("Translating pkey %#x failed (%d) - using index 0\n",
		       ch->pkey, ret);

	ret = FUNC2(qp, attr,
			   IB_QP_STATE | IB_QP_ACCESS_FLAGS | IB_QP_PORT |
			   IB_QP_PKEY_INDEX);

	FUNC3(attr);
	return ret;
}