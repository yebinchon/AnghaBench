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
struct qedr_dev {int /*<<< orphan*/  rdma_ctx; TYPE_1__* ops; int /*<<< orphan*/  dpi; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* rdma_stop ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* rdma_remove_user ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct qedr_dev *dev)
{
	dev->ops->rdma_remove_user(dev->rdma_ctx, dev->dpi);
	dev->ops->rdma_stop(dev->rdma_ctx);
}