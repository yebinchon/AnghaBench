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
typedef  scalar_t__ u8 ;
struct rdma_ah_attr {int /*<<< orphan*/  type; } ;
struct mlx4_qp_path {int sched_queue; int grh_mylmc; int /*<<< orphan*/  rgid; int /*<<< orphan*/  tclass_flowlabel; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  mgid_index; scalar_t__ static_rate; int /*<<< orphan*/  rlid; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  ib_dev; struct mlx4_dev* dev; } ;
struct TYPE_2__ {scalar_t__ num_ports; } ;
struct mlx4_dev {TYPE_1__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDMA_AH_ATTR_TYPE_ROCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_ah_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_ah_attr*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_ah_attr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rdma_ah_attr*,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct mlx4_ib_dev *ibdev,
			    struct rdma_ah_attr *ah_attr,
			    struct mlx4_qp_path *path)
{
	struct mlx4_dev *dev = ibdev->dev;
	u8 port_num = path->sched_queue & 0x40 ? 2 : 1;

	FUNC2(ah_attr, 0, sizeof(*ah_attr));
	if (port_num == 0 || port_num > dev->caps.num_ports)
		return;
	ah_attr->type = FUNC3(&ibdev->ib_dev, port_num);

	if (ah_attr->type == RDMA_AH_ATTR_TYPE_ROCE)
		FUNC9(ah_attr, ((path->sched_queue >> 3) & 0x7) |
			       ((path->sched_queue & 4) << 1));
	else
		FUNC9(ah_attr, (path->sched_queue >> 2) & 0xf);
	FUNC8(ah_attr, port_num);

	FUNC5(ah_attr, FUNC0(path->rlid));
	FUNC7(ah_attr, path->grh_mylmc & 0x7f);
	FUNC10(ah_attr,
				path->static_rate ? path->static_rate - 5 : 0);
	if (path->grh_mylmc & (1 << 7)) {
		FUNC6(ah_attr, NULL,
				FUNC1(path->tclass_flowlabel) & 0xfffff,
				path->mgid_index,
				path->hop_limit,
				(FUNC1(path->tclass_flowlabel)
				 >> 20) & 0xff);
		FUNC4(ah_attr, path->rgid);
	}
}