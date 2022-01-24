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
 int MTHCA_EQ_DB_REQ_NOT ; 
 scalar_t__ MTHCA_EQ_DOORBELL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct mthca_dev *dev, int eqn)
{
	FUNC1(MTHCA_EQ_DB_REQ_NOT | eqn, 0,
		      dev->kar + MTHCA_EQ_DOORBELL,
		      FUNC0(&dev->doorbell_lock));
}