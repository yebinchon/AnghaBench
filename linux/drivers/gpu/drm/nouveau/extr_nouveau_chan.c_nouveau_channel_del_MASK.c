#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int super; } ;
struct nouveau_cli {TYPE_3__ base; } ;
struct TYPE_12__ {scalar_t__ client; } ;
struct TYPE_10__ {TYPE_6__* buffer; int /*<<< orphan*/  vma; TYPE_4__ ctxdma; } ;
struct nouveau_channel {TYPE_2__ push; TYPE_4__ user; int /*<<< orphan*/  kill; TYPE_4__ vram; TYPE_4__ gart; TYPE_4__ nvsw; int /*<<< orphan*/  inst; TYPE_1__* vmm; int /*<<< orphan*/  drm; scalar_t__ fence; } ;
struct TYPE_14__ {scalar_t__ pin_refcnt; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* context_del ) (struct nouveau_channel*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  svmm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_channel*) ; 

void
FUNC10(struct nouveau_channel **pchan)
{
	struct nouveau_channel *chan = *pchan;
	if (chan) {
		struct nouveau_cli *cli = (void *)chan->user.client;
		bool super;

		if (cli) {
			super = cli->base.super;
			cli->base.super = true;
		}

		if (chan->fence)
			FUNC4(chan->drm)->context_del(chan);

		if (cli)
			FUNC5(chan->vmm->svmm, chan->inst);

		FUNC8(&chan->nvsw);
		FUNC8(&chan->gart);
		FUNC8(&chan->vram);
		FUNC7(&chan->kill);
		FUNC8(&chan->user);
		FUNC8(&chan->push.ctxdma);
		FUNC6(&chan->push.vma);
		FUNC2(chan->push.buffer);
		if (chan->push.buffer && chan->push.buffer->pin_refcnt)
			FUNC3(chan->push.buffer);
		FUNC1(NULL, &chan->push.buffer);
		FUNC0(chan);

		if (cli)
			cli->base.super = super;
	}
	*pchan = NULL;
}