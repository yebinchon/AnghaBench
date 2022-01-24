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
struct nouveau_fence {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EBUSY ; 
 int HZ ; 
 long FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (struct nouveau_fence*,int) ; 

int
FUNC2(struct nouveau_fence *fence, bool lazy, bool intr)
{
	long ret;

	if (!lazy)
		return FUNC1(fence, intr);

	ret = FUNC0(&fence->base, intr, 15 * HZ);
	if (ret < 0)
		return ret;
	else if (!ret)
		return -EBUSY;
	else
		return 0;
}