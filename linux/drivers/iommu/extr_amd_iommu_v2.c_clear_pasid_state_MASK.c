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
struct pasid_state {int dummy; } ;
struct device_state {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct pasid_state** FUNC0 (struct device_state*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct device_state *dev_state, int pasid)
{
	struct pasid_state **ptr;
	unsigned long flags;

	FUNC1(&dev_state->lock, flags);
	ptr = FUNC0(dev_state, pasid, true);

	if (ptr == NULL)
		goto out_unlock;

	*ptr = NULL;

out_unlock:
	FUNC2(&dev_state->lock, flags);
}