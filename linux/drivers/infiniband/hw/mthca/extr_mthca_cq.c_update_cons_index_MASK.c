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
struct mthca_dev {int /*<<< orphan*/  doorbell_lock; scalar_t__ kar; } ;
struct mthca_cq {int cqn; int /*<<< orphan*/  cons_index; int /*<<< orphan*/ * set_ci_db; } ;

/* Variables and functions */
 scalar_t__ MTHCA_CQ_DOORBELL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MTHCA_TAVOR_CQ_DB_INC_CI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline void FUNC5(struct mthca_dev *dev, struct mthca_cq *cq,
				     int incr)
{
	if (FUNC2(dev)) {
		*cq->set_ci_db = FUNC1(cq->cons_index);
		FUNC4();
	} else {
		FUNC3(MTHCA_TAVOR_CQ_DB_INC_CI | cq->cqn, incr - 1,
			      dev->kar + MTHCA_CQ_DOORBELL,
			      FUNC0(&dev->doorbell_lock));
	}
}