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
struct nv10_fence_chan {int /*<<< orphan*/  base; int /*<<< orphan*/  sema; } ;
struct nouveau_channel {struct nv10_fence_chan* fence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct nouveau_channel *chan)
{
	struct nv10_fence_chan *fctx = chan->fence;
	FUNC0(&fctx->base);
	FUNC2(&fctx->sema);
	chan->fence = NULL;
	FUNC1(&fctx->base);
}