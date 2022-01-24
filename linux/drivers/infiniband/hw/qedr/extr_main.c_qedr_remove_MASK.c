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
struct qedr_dev {int /*<<< orphan*/  ibdev; int /*<<< orphan*/  cdev; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* iwarp_set_engine_affin ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qedr_dev*) ; 
 scalar_t__ FUNC1 (struct qedr_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct qedr_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct qedr_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct qedr_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct qedr_dev *dev)
{
	/* First unregister with stack to stop all the active traffic
	 * of the registered clients.
	 */
	FUNC3(&dev->ibdev);

	FUNC5(dev);
	FUNC6(dev);
	FUNC4(dev);

	if (FUNC0(dev) && FUNC1(dev))
		dev->ops->iwarp_set_engine_affin(dev->cdev, true);

	FUNC2(&dev->ibdev);
}