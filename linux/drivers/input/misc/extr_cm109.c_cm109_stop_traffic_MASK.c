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
struct cm109_dev {int shutdown; int /*<<< orphan*/  urb_irq; int /*<<< orphan*/  urb_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cm109_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cm109_dev *dev)
{
	dev->shutdown = 1;
	/*
	 * Make sure other CPUs see this
	 */
	FUNC1();

	FUNC2(dev->urb_ctl);
	FUNC2(dev->urb_irq);

	FUNC0(dev, 0);

	dev->shutdown = 0;
	FUNC1();
}