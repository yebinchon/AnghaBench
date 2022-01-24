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
struct TYPE_2__ {int /*<<< orphan*/  seqno; } ;
struct nouveau_fence {TYPE_1__ base; struct nouveau_channel* channel; } ;
struct nouveau_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*) ; 
 int /*<<< orphan*/  NV10_SUBCHAN_REF_CNT ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_channel*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nouveau_channel*,int) ; 

int
FUNC4(struct nouveau_fence *fence)
{
	struct nouveau_channel *chan = fence->channel;
	int ret = FUNC3(chan, 2);
	if (ret == 0) {
		FUNC0(chan, 0, NV10_SUBCHAN_REF_CNT, 1);
		FUNC2  (chan, fence->base.seqno);
		FUNC1 (chan);
	}
	return ret;
}