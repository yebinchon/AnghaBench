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
typedef  int /*<<< orphan*/  type ;
struct ib_flow {int dummy; } ;
struct mlx4_ib_flow {TYPE_1__* reg_id; struct ib_flow ibflow; } ;
struct mlx4_dev {int dummy; } ;
struct ib_udata {scalar_t__ inlen; } ;
struct ib_qp {TYPE_3__* device; } ;
struct ib_flow_attr {int port; int flags; int type; } ;
typedef  enum mlx4_net_trans_promisc_mode { ____Placeholder_mlx4_net_trans_promisc_mode } mlx4_net_trans_promisc_mode ;
struct TYPE_6__ {int phys_port_cnt; } ;
struct TYPE_5__ {struct mlx4_dev* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  mirror; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct ib_flow* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  IB_FLOW_ATTR_ALL_DEFAULT 131 
 int IB_FLOW_ATTR_FLAGS_DONT_TRAP ; 
#define  IB_FLOW_ATTR_MC_DEFAULT 130 
#define  IB_FLOW_ATTR_NORMAL 129 
#define  IB_FLOW_ATTR_SNIFFER 128 
 int MLX4_FS_ALL_DEFAULT ; 
 int MLX4_FS_MC_DEFAULT ; 
 int MLX4_FS_MIRROR_RX_PORT ; 
 int MLX4_FS_MIRROR_SX_PORT ; 
 int MLX4_FS_REGULAR ; 
 int FUNC2 (struct ib_qp*,struct ib_flow_attr*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_udata*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_ib_flow*) ; 
 struct mlx4_ib_flow* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct mlx4_dev*,struct ib_flow_attr*,int*) ; 
 int FUNC9 (struct ib_qp*,struct ib_flow_attr*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct mlx4_dev*) ; 
 TYPE_2__* FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static struct ib_flow *FUNC13(struct ib_qp *qp,
				    struct ib_flow_attr *flow_attr,
				    int domain, struct ib_udata *udata)
{
	int err = 0, i = 0, j = 0;
	struct mlx4_ib_flow *mflow;
	enum mlx4_net_trans_promisc_mode type[2];
	struct mlx4_dev *dev = (FUNC11(qp->device))->dev;
	int is_bonded = FUNC10(dev);

	if (flow_attr->port < 1 || flow_attr->port > qp->device->phys_port_cnt)
		return FUNC1(-EINVAL);

	if (flow_attr->flags & ~IB_FLOW_ATTR_FLAGS_DONT_TRAP)
		return FUNC1(-EOPNOTSUPP);

	if ((flow_attr->flags & IB_FLOW_ATTR_FLAGS_DONT_TRAP) &&
	    (flow_attr->type != IB_FLOW_ATTR_NORMAL))
		return FUNC1(-EOPNOTSUPP);

	if (udata &&
	    udata->inlen && !FUNC4(udata, 0, udata->inlen))
		return FUNC1(-EOPNOTSUPP);

	FUNC7(type, 0, sizeof(type));

	mflow = FUNC6(sizeof(*mflow), GFP_KERNEL);
	if (!mflow) {
		err = -ENOMEM;
		goto err_free;
	}

	switch (flow_attr->type) {
	case IB_FLOW_ATTR_NORMAL:
		/* If dont trap flag (continue match) is set, under specific
		 * condition traffic be replicated to given qp,
		 * without stealing it
		 */
		if (FUNC12(flow_attr->flags & IB_FLOW_ATTR_FLAGS_DONT_TRAP)) {
			err = FUNC8(dev,
							 flow_attr,
							 type);
			if (err)
				goto err_free;
		} else {
			type[0] = MLX4_FS_REGULAR;
		}
		break;

	case IB_FLOW_ATTR_ALL_DEFAULT:
		type[0] = MLX4_FS_ALL_DEFAULT;
		break;

	case IB_FLOW_ATTR_MC_DEFAULT:
		type[0] = MLX4_FS_MC_DEFAULT;
		break;

	case IB_FLOW_ATTR_SNIFFER:
		type[0] = MLX4_FS_MIRROR_RX_PORT;
		type[1] = MLX4_FS_MIRROR_SX_PORT;
		break;

	default:
		err = -EINVAL;
		goto err_free;
	}

	while (i < FUNC0(type) && type[i]) {
		err = FUNC2(qp, flow_attr, domain, type[i],
					    &mflow->reg_id[i].id);
		if (err)
			goto err_create_flow;
		if (is_bonded) {
			/* Application always sees one port so the mirror rule
			 * must be on port #2
			 */
			flow_attr->port = 2;
			err = FUNC2(qp, flow_attr,
						    domain, type[j],
						    &mflow->reg_id[j].mirror);
			flow_attr->port = 1;
			if (err)
				goto err_create_flow;
			j++;
		}

		i++;
	}

	if (i < FUNC0(type) && flow_attr->type == IB_FLOW_ATTR_NORMAL) {
		err = FUNC9(qp, flow_attr,
					       &mflow->reg_id[i].id);
		if (err)
			goto err_create_flow;

		if (is_bonded) {
			flow_attr->port = 2;
			err = FUNC9(qp, flow_attr,
						       &mflow->reg_id[j].mirror);
			flow_attr->port = 1;
			if (err)
				goto err_create_flow;
			j++;
		}
		/* function to create mirror rule */
		i++;
	}

	return &mflow->ibflow;

err_create_flow:
	while (i) {
		(void)FUNC3(FUNC11(qp->device)->dev,
					     mflow->reg_id[i].id);
		i--;
	}

	while (j) {
		(void)FUNC3(FUNC11(qp->device)->dev,
					     mflow->reg_id[j].mirror);
		j--;
	}
err_free:
	FUNC5(mflow);
	return FUNC1(err);
}