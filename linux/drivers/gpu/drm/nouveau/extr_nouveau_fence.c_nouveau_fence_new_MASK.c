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
struct nouveau_fence {int dummy; } ;
struct nouveau_channel {int /*<<< orphan*/  fence; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nouveau_fence* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nouveau_fence*,struct nouveau_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_fence**) ; 
 scalar_t__ FUNC3 (int) ; 

int
FUNC4(struct nouveau_channel *chan, bool sysmem,
		  struct nouveau_fence **pfence)
{
	struct nouveau_fence *fence;
	int ret = 0;

	if (FUNC3(!chan->fence))
		return -ENODEV;

	fence = FUNC0(sizeof(*fence), GFP_KERNEL);
	if (!fence)
		return -ENOMEM;

	ret = FUNC1(fence, chan);
	if (ret)
		FUNC2(&fence);

	*pfence = fence;
	return ret;
}