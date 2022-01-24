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
struct pvrdma_dev {int dummy; } ;
struct pvrdma_cq {int /*<<< orphan*/  pdir; int /*<<< orphan*/  umem; int /*<<< orphan*/  free; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pvrdma_dev*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct pvrdma_dev *dev, struct pvrdma_cq *cq)
{
	if (FUNC3(&cq->refcnt))
		FUNC0(&cq->free);
	FUNC4(&cq->free);

	FUNC1(cq->umem);

	FUNC2(dev, &cq->pdir);
}