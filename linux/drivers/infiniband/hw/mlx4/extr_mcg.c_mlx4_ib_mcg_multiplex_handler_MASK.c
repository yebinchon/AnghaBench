#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct mlx4_ib_demux_ctx* demux; } ;
struct mlx4_ib_dev {TYPE_1__ sriov; } ;
struct mlx4_ib_demux_ctx {int /*<<< orphan*/  mcg_table_lock; scalar_t__ flushing; } ;
struct TYPE_6__ {int method; } ;
struct ib_sa_mad {TYPE_3__ mad_hdr; scalar_t__ data; } ;
struct mcast_req {int func; struct mcast_group* group; struct ib_sa_mad sa_mad; } ;
struct mcast_group {int /*<<< orphan*/  lock; TYPE_2__* func; } ;
struct ib_sa_mcmember_data {int /*<<< orphan*/  mgid; } ;
struct ib_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_pend_reqs; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  IB_MGMT_METHOD_GET_RESP 133 
#define  IB_MGMT_METHOD_SET 132 
#define  IB_SA_METHOD_DELETE 131 
#define  IB_SA_METHOD_DELETE_RESP 130 
#define  IB_SA_METHOD_GET_TABLE 129 
#define  IB_SA_METHOD_GET_TABLE_RESP 128 
 int /*<<< orphan*/  FUNC0 (struct mcast_group*) ; 
 int /*<<< orphan*/  MAX_PEND_REQS_PER_FUNC ; 
 int FUNC1 (struct mcast_group*) ; 
 struct mcast_group* FUNC2 (struct mlx4_ib_demux_ctx*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mcast_req*) ; 
 struct mcast_req* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mcast_group*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mcast_req*) ; 
 int /*<<< orphan*/  FUNC10 (struct mcast_group*,int /*<<< orphan*/ ) ; 
 struct mlx4_ib_dev* FUNC11 (struct ib_device*) ; 

int FUNC12(struct ib_device *ibdev, int port,
				  int slave, struct ib_sa_mad *sa_mad)
{
	struct mlx4_ib_dev *dev = FUNC11(ibdev);
	struct ib_sa_mcmember_data *rec = (struct ib_sa_mcmember_data *)sa_mad->data;
	struct mlx4_ib_demux_ctx *ctx = &dev->sriov.demux[port - 1];
	struct mcast_group *group;
	struct mcast_req *req;
	int may_create = 0;

	if (ctx->flushing)
		return -EAGAIN;

	switch (sa_mad->mad_hdr.method) {
	case IB_MGMT_METHOD_SET:
		may_create = 1;
		/* fall through */
	case IB_SA_METHOD_DELETE:
		req = FUNC4(sizeof *req, GFP_KERNEL);
		if (!req)
			return -ENOMEM;

		req->func = slave;
		req->sa_mad = *sa_mad;

		FUNC7(&ctx->mcg_table_lock);
		group = FUNC2(ctx, &rec->mgid, may_create);
		FUNC8(&ctx->mcg_table_lock);
		if (FUNC0(group)) {
			FUNC3(req);
			return FUNC1(group);
		}
		FUNC7(&group->lock);
		if (group->func[slave].num_pend_reqs > MAX_PEND_REQS_PER_FUNC) {
			FUNC8(&group->lock);
			FUNC5(group, "Port %d, Func %d has too many pending requests (%d), dropping\n",
					port, slave, MAX_PEND_REQS_PER_FUNC);
			FUNC10(group, 0);
			FUNC3(req);
			return -ENOMEM;
		}
		++group->func[slave].num_pend_reqs;
		req->group = group;
		FUNC9(req);
		FUNC8(&group->lock);
		FUNC10(group, 0);
		return 1; /* consumed */
	case IB_SA_METHOD_GET_TABLE:
	case IB_MGMT_METHOD_GET_RESP:
	case IB_SA_METHOD_GET_TABLE_RESP:
	case IB_SA_METHOD_DELETE_RESP:
		return 0; /* not consumed, pass-through */
	default:
		FUNC6("In multiplex, port %d, func %d: unexpected MCMember method: 0x%x, dropping\n",
			port, slave, sa_mad->mad_hdr.method);
		return 1; /* consumed */
	}
}