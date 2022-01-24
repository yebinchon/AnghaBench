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
struct st_lsm6dsx_hw {int /*<<< orphan*/  fifo_lock; TYPE_2__* settings; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int (* read_fifo ) (struct st_lsm6dsx_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ fifo_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct st_lsm6dsx_hw*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *private)
{
	struct st_lsm6dsx_hw *hw = private;
	int count;

	FUNC0(&hw->fifo_lock);
	count = hw->settings->fifo_ops.read_fifo(hw);
	FUNC1(&hw->fifo_lock);

	return count ? IRQ_HANDLED : IRQ_NONE;
}