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
struct TYPE_3__ {int /*<<< orphan*/  alloc; TYPE_2__* eq; } ;
struct mthca_dev {TYPE_1__ eq_table; } ;
struct TYPE_4__ {int /*<<< orphan*/  eqn; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTHCA_CMD_EVENT_MASK ; 
 size_t MTHCA_EQ_ASYNC ; 
 size_t MTHCA_EQ_CMD ; 
 int MTHCA_NUM_EQ ; 
 int /*<<< orphan*/  FUNC0 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_dev*) ; 

void FUNC6(struct mthca_dev *dev)
{
	int i;

	FUNC4(dev);

	FUNC1(dev, FUNC0(dev),
		     1, dev->eq_table.eq[MTHCA_EQ_ASYNC].eqn);
	FUNC1(dev, MTHCA_CMD_EVENT_MASK,
		     1, dev->eq_table.eq[MTHCA_EQ_CMD].eqn);

	for (i = 0; i < MTHCA_NUM_EQ; ++i)
		FUNC3(dev, &dev->eq_table.eq[i]);

	FUNC5(dev);

	FUNC2(&dev->eq_table.alloc);
}