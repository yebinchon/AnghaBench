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
struct scatterlist {int dummy; } ;
struct pvrdma_user_mr {scalar_t__ npages; } ;
struct pvrdma_dev {TYPE_1__* pdev; } ;
struct ib_mr {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct ib_mr*,struct scatterlist*,int,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvrdma_set_page ; 
 struct pvrdma_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 struct pvrdma_user_mr* FUNC3 (struct ib_mr*) ; 

int FUNC4(struct ib_mr *ibmr, struct scatterlist *sg, int sg_nents,
		     unsigned int *sg_offset)
{
	struct pvrdma_user_mr *mr = FUNC3(ibmr);
	struct pvrdma_dev *dev = FUNC2(ibmr->device);
	int ret;

	mr->npages = 0;

	ret = FUNC1(ibmr, sg, sg_nents, sg_offset, pvrdma_set_page);
	if (ret < 0)
		FUNC0(&dev->pdev->dev, "could not map sg to pages\n");

	return ret;
}