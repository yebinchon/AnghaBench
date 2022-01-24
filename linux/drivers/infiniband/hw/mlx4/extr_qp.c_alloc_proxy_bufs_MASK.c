#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int wqe_cnt; } ;
struct mlx4_ib_qp {TYPE_2__* sqp_proxy_rcv; TYPE_1__ rq; } ;
struct mlx4_ib_proxy_sqp_hdr {int dummy; } ;
struct mlx4_ib_buf {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_7__ {struct TYPE_7__* addr; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ib_device *dev, struct mlx4_ib_qp *qp)
{
	int i;

	qp->sqp_proxy_rcv =
		FUNC5(qp->rq.wqe_cnt, sizeof(struct mlx4_ib_buf),
			      GFP_KERNEL);
	if (!qp->sqp_proxy_rcv)
		return -ENOMEM;
	for (i = 0; i < qp->rq.wqe_cnt; i++) {
		qp->sqp_proxy_rcv[i].addr =
			FUNC4(sizeof (struct mlx4_ib_proxy_sqp_hdr),
				GFP_KERNEL);
		if (!qp->sqp_proxy_rcv[i].addr)
			goto err;
		qp->sqp_proxy_rcv[i].map =
			FUNC0(dev, qp->sqp_proxy_rcv[i].addr,
					  sizeof (struct mlx4_ib_proxy_sqp_hdr),
					  DMA_FROM_DEVICE);
		if (FUNC1(dev, qp->sqp_proxy_rcv[i].map)) {
			FUNC3(qp->sqp_proxy_rcv[i].addr);
			goto err;
		}
	}
	return 0;

err:
	while (i > 0) {
		--i;
		FUNC2(dev, qp->sqp_proxy_rcv[i].map,
				    sizeof (struct mlx4_ib_proxy_sqp_hdr),
				    DMA_FROM_DEVICE);
		FUNC3(qp->sqp_proxy_rcv[i].addr);
	}
	FUNC3(qp->sqp_proxy_rcv);
	qp->sqp_proxy_rcv = NULL;
	return -ENOMEM;
}