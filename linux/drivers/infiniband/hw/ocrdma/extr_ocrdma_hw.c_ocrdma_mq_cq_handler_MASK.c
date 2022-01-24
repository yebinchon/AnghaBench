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
typedef  int u16 ;
struct ocrdma_mcqe {int valid_ae_cmpl_cons; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {TYPE_1__ cq; } ;
struct ocrdma_dev {TYPE_2__ mq; } ;

/* Variables and functions */
 int OCRDMA_MCQE_AE_MASK ; 
 int OCRDMA_MCQE_CMPL_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ocrdma_mcqe*,int /*<<< orphan*/ ,int) ; 
 struct ocrdma_mcqe* FUNC1 (struct ocrdma_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_mcqe*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ocrdma_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocrdma_dev*,struct ocrdma_mcqe*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocrdma_dev*,struct ocrdma_mcqe*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocrdma_dev*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC7(struct ocrdma_dev *dev, u16 cq_id)
{
	u16 cqe_popped = 0;
	struct ocrdma_mcqe *cqe;

	while (1) {
		cqe = FUNC1(dev);
		if (cqe == NULL)
			break;
		FUNC2(cqe, sizeof(*cqe));
		cqe_popped += 1;
		if (cqe->valid_ae_cmpl_cons & OCRDMA_MCQE_AE_MASK)
			FUNC4(dev, cqe);
		else if (cqe->valid_ae_cmpl_cons & OCRDMA_MCQE_CMPL_MASK)
			FUNC5(dev, cqe);
		FUNC0(cqe, 0, sizeof(struct ocrdma_mcqe));
		FUNC3(dev);
	}
	FUNC6(dev, dev->mq.cq.id, true, false, cqe_popped);
	return 0;
}