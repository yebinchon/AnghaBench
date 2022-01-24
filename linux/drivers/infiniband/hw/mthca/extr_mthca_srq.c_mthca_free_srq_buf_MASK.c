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
struct mthca_srq {int max; int wqe_shift; int /*<<< orphan*/  wrid; int /*<<< orphan*/  mr; int /*<<< orphan*/  is_direct; int /*<<< orphan*/  queue; } ;
struct mthca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_dev*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mthca_dev *dev, struct mthca_srq *srq)
{
	FUNC1(dev, srq->max << srq->wqe_shift, &srq->queue,
		       srq->is_direct, &srq->mr);
	FUNC0(srq->wrid);
}