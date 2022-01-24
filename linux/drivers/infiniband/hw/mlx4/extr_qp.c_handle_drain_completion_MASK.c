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
struct mlx4_ib_drain_cqe {int /*<<< orphan*/  done; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  reset_flow_resource_lock; struct mlx4_dev* dev; } ;
struct TYPE_4__ {int reset_notify_added; int /*<<< orphan*/  (* comp ) (TYPE_2__*) ;} ;
struct mlx4_ib_cq {TYPE_2__ mcq; } ;
struct mlx4_dev {TYPE_1__* persist; } ;
struct ib_cq {int poll_ctx; int /*<<< orphan*/  work; int /*<<< orphan*/  iop; } ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 int HZ ; 
 int IB_POLL_DIRECT ; 
#define  IB_POLL_SOFTIRQ 129 
#define  IB_POLL_WORKQUEUE 128 
 scalar_t__ MLX4_DEVICE_STATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_cq*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 struct mlx4_ib_cq* FUNC8 (struct ib_cq*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC11(struct ib_cq *cq,
				    struct mlx4_ib_drain_cqe *sdrain,
				    struct mlx4_ib_dev *dev)
{
	struct mlx4_dev *mdev = dev->dev;

	if (cq->poll_ctx == IB_POLL_DIRECT) {
		while (FUNC10(&sdrain->done, HZ / 10) <= 0)
			FUNC2(cq, -1);
		return;
	}

	if (mdev->persist->state == MLX4_DEVICE_STATE_INTERNAL_ERROR) {
		struct mlx4_ib_cq *mcq = FUNC8(cq);
		bool triggered = false;
		unsigned long flags;

		FUNC5(&dev->reset_flow_resource_lock, flags);
		/* Make sure that the CQ handler won't run if wasn't run yet */
		if (!mcq->mcq.reset_notify_added)
			mcq->mcq.reset_notify_added = 1;
		else
			triggered = true;
		FUNC6(&dev->reset_flow_resource_lock, flags);

		if (triggered) {
			/* Wait for any scheduled/running task to be ended */
			switch (cq->poll_ctx) {
			case IB_POLL_SOFTIRQ:
				FUNC3(&cq->iop);
				FUNC4(&cq->iop);
				break;
			case IB_POLL_WORKQUEUE:
				FUNC1(&cq->work);
				break;
			default:
				FUNC0(1);
			}
		}

		/* Run the CQ handler - this makes sure that the drain WR will
		 * be processed if wasn't processed yet.
		 */
		mcq->mcq.comp(&mcq->mcq);
	}

	FUNC9(&sdrain->done);
}