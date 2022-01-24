#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_9__ {int iH; int iW; int oH; int oW; } ;
struct nv50_head_atom {TYPE_4__ view; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int index; TYPE_2__ base; } ;
struct nv50_head {TYPE_3__ base; } ;
struct nv50_dmac {int dummy; } ;
struct TYPE_10__ {TYPE_1__* core; } ;
struct TYPE_6__ {struct nv50_dmac chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nv50_dmac*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct nv50_dmac*,int) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct nv50_head *head, struct nv50_head_atom *asyh)
{
	struct nv50_dmac *core = &FUNC4(head->base.base.dev)->core->chan;
	u32 *push;
	if ((push = FUNC3(core, 8))) {
		FUNC2(push, 0x0494 + (head->base.index * 0x300), 1);
		FUNC0(push, 0x00000000);
		FUNC2(push, 0x04b8 + (head->base.index * 0x300), 1);
		FUNC0(push, asyh->view.iH << 16 | asyh->view.iW);
		FUNC2(push, 0x04c0 + (head->base.index * 0x300), 3);
		FUNC0(push, asyh->view.oH << 16 | asyh->view.oW);
		FUNC0(push, asyh->view.oH << 16 | asyh->view.oW);
		FUNC0(push, asyh->view.oH << 16 | asyh->view.oW);
		FUNC1(push, core);
	}
}