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
struct mlx5_ib_gsi_qp {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cap; int /*<<< orphan*/  rx_qp; } ;
struct ib_qp_init_attr {int /*<<< orphan*/  cap; } ;
struct ib_qp_attr {int dummy; } ;
struct ib_qp {int dummy; } ;

/* Variables and functions */
 struct mlx5_ib_gsi_qp* FUNC0 (struct ib_qp*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ib_qp_attr*,int,struct ib_qp_init_attr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ib_qp *qp, struct ib_qp_attr *qp_attr,
			 int qp_attr_mask,
			 struct ib_qp_init_attr *qp_init_attr)
{
	struct mlx5_ib_gsi_qp *gsi = FUNC0(qp);
	int ret;

	FUNC2(&gsi->mutex);
	ret = FUNC1(gsi->rx_qp, qp_attr, qp_attr_mask, qp_init_attr);
	qp_init_attr->cap = gsi->cap;
	FUNC3(&gsi->mutex);

	return ret;
}