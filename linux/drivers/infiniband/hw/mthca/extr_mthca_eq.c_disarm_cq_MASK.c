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

/* Variables and functions */
 int MTHCA_EQ_DB_DISARM_CQ ; 
 scalar_t__ MTHCA_EQ_DOORBELL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct mthca_dev *dev, int eqn, int cqn)
{
	if (!FUNC1(dev)) {
		FUNC2(MTHCA_EQ_DB_DISARM_CQ | eqn, cqn,
			      dev->kar + MTHCA_EQ_DOORBELL,
			      FUNC0(&dev->doorbell_lock));
	}
}