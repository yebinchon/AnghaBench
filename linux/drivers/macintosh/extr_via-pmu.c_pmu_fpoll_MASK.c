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
struct pmu_private {scalar_t__ rb_get; scalar_t__ rb_put; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; } ;
struct file {struct pmu_private* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static __poll_t
FUNC3(struct file *filp, poll_table *wait)
{
	struct pmu_private *pp = filp->private_data;
	__poll_t mask = 0;
	unsigned long flags;
	
	if (!pp)
		return 0;
	FUNC0(filp, &pp->wait, wait);
	FUNC1(&pp->lock, flags);
	if (pp->rb_get != pp->rb_put)
		mask |= EPOLLIN;
	FUNC2(&pp->lock, flags);
	return mask;
}