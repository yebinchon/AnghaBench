#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nouveau_fence {int dummy; } ;
struct nouveau_cli {int /*<<< orphan*/  base; } ;
struct TYPE_3__ {scalar_t__ client; } ;
struct nouveau_channel {int /*<<< orphan*/  chid; TYPE_1__ user; int /*<<< orphan*/  killed; scalar_t__ fence; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nouveau_cli*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  err ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct nouveau_channel*,int,struct nouveau_fence**) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_fence**) ; 
 int FUNC5 (struct nouveau_fence*,int,int) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct nouveau_channel *chan)
{
	if (FUNC2(chan && chan->fence && !FUNC1(&chan->killed))) {
		struct nouveau_cli *cli = (void *)chan->user.client;
		struct nouveau_fence *fence = NULL;
		int ret;

		ret = FUNC3(chan, false, &fence);
		if (!ret) {
			ret = FUNC5(fence, false, false);
			FUNC4(&fence);
		}

		if (ret) {
			FUNC0(err, cli, "failed to idle channel %d [%s]\n",
				  chan->chid, FUNC6(&cli->base)->name);
			return ret;
		}
	}
	return 0;
}