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
struct stu300_dev {scalar_t__ cmd_err; int /*<<< orphan*/  clk; int /*<<< orphan*/  cmd_issue_lock; int /*<<< orphan*/  cmd_complete; int /*<<< orphan*/  cmd_event; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ STU300_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct stu300_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct stu300_dev *dev = data;
	int res;

	/* Just make sure that the block is clocked */
	FUNC1(dev->clk);

	/* See if this was what we were waiting for */
	FUNC3(&dev->cmd_issue_lock);

	res = FUNC5(dev, dev->cmd_event);
	if (res || dev->cmd_err != STU300_ERROR_NONE)
		FUNC2(&dev->cmd_complete);

	FUNC4(&dev->cmd_issue_lock);

	FUNC0(dev->clk);

	return IRQ_HANDLED;
}