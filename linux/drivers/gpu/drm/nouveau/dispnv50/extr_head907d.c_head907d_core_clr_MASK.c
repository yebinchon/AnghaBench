#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int index; TYPE_2__ base; } ;
struct nv50_head {TYPE_3__ base; } ;
struct nv50_dmac {int dummy; } ;
struct TYPE_8__ {TYPE_1__* core; } ;
struct TYPE_5__ {struct nv50_dmac chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nv50_dmac*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct nv50_dmac*,int) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct nv50_head *head)
{
	struct nv50_dmac *core = &FUNC4(head->base.base.dev)->core->chan;
	u32 *push;
	if ((push = FUNC3(core, 2))) {
		FUNC2(push, 0x0474 + head->base.index * 0x300, 1);
		FUNC0(push, 0x00000000);
		FUNC1(push, core);
	}
}