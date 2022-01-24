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
struct efa_dev {int /*<<< orphan*/  ibdev; int /*<<< orphan*/  edev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFA_REGS_RESET_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct efa_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC4(struct efa_dev *dev)
{
	FUNC0(&dev->edev, EFA_REGS_RESET_NORMAL);
	FUNC3(&dev->ibdev, "Unregister ib device\n");
	FUNC2(&dev->ibdev);
	FUNC1(dev);
}