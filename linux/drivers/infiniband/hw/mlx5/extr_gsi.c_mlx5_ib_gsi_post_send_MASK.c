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
struct TYPE_3__ {int max_send_wr; } ;
struct mlx5_ib_gsi_qp {int outstanding_pi; int /*<<< orphan*/  lock; TYPE_1__ cap; } ;
struct TYPE_4__ {int /*<<< orphan*/ * next; } ;
struct ib_ud_wr {TYPE_2__ wr; } ;
struct ib_send_wr {struct ib_send_wr* next; } ;
struct ib_qp {int dummy; } ;

/* Variables and functions */
 struct ib_qp* FUNC0 (struct mlx5_ib_gsi_qp*,struct ib_ud_wr*) ; 
 struct mlx5_ib_gsi_qp* FUNC1 (struct ib_qp*) ; 
 int FUNC2 (struct ib_qp*,TYPE_2__*,struct ib_send_wr const**) ; 
 int FUNC3 (struct mlx5_ib_gsi_qp*,struct ib_ud_wr*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mlx5_ib_gsi_qp*,struct ib_ud_wr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ib_ud_wr* FUNC7 (struct ib_send_wr const*) ; 

int FUNC8(struct ib_qp *qp, const struct ib_send_wr *wr,
			  const struct ib_send_wr **bad_wr)
{
	struct mlx5_ib_gsi_qp *gsi = FUNC1(qp);
	struct ib_qp *tx_qp;
	unsigned long flags;
	int ret;

	for (; wr; wr = wr->next) {
		struct ib_ud_wr cur_wr = *FUNC7(wr);

		cur_wr.wr.next = NULL;

		FUNC5(&gsi->lock, flags);
		tx_qp = FUNC0(gsi, &cur_wr);
		if (!tx_qp) {
			ret = FUNC4(gsi, &cur_wr);
			if (ret)
				goto err;
			FUNC6(&gsi->lock, flags);
			continue;
		}

		ret = FUNC3(gsi, &cur_wr, NULL);
		if (ret)
			goto err;

		ret = FUNC2(tx_qp, &cur_wr.wr, bad_wr);
		if (ret) {
			/* Undo the effect of adding the outstanding wr */
			gsi->outstanding_pi = (gsi->outstanding_pi - 1) %
					      gsi->cap.max_send_wr;
			goto err;
		}
		FUNC6(&gsi->lock, flags);
	}

	return 0;

err:
	FUNC6(&gsi->lock, flags);
	*bad_wr = wr;
	return ret;
}