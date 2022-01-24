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
struct device {int dummy; } ;
struct cec_devnode {int /*<<< orphan*/  minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cec_devnode_lock ; 
 int /*<<< orphan*/  cec_devnode_nums ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cec_devnode*) ; 
 struct cec_devnode* FUNC5 (struct device*) ; 

__attribute__((used)) static void FUNC6(struct device *cd)
{
	struct cec_devnode *devnode = FUNC5(cd);

	FUNC2(&cec_devnode_lock);
	/* Mark device node number as free */
	FUNC1(devnode->minor, cec_devnode_nums);
	FUNC3(&cec_devnode_lock);

	FUNC0(FUNC4(devnode));
}