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
typedef  int u32 ;
struct TYPE_6__ {int cpp; } ;
struct nv50_head_atom {TYPE_1__ base; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int index; TYPE_4__ base; } ;
struct nv50_head {TYPE_3__ base; } ;
struct nv50_dmac {int dummy; } ;
struct TYPE_10__ {TYPE_2__* core; } ;
struct TYPE_7__ {struct nv50_dmac chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,struct nv50_dmac*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 int* FUNC4 (struct nv50_dmac*,int) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct nv50_head *head, struct nv50_head_atom *asyh)
{
	struct nv50_dmac *core = &FUNC5(head->base.base.dev)->core->chan;
	u32 bounds = 0;
	u32 *push;

	if (asyh->base.cpp) {
		switch (asyh->base.cpp) {
		case 8: bounds |= 0x00000500; break;
		case 4: bounds |= 0x00000300; break;
		case 2: bounds |= 0x00000100; break;
		case 1: bounds |= 0x00000000; break;
		default:
			FUNC0(1);
			break;
		}
		bounds |= 0x00000001;
	}

	if ((push = FUNC4(core, 2))) {
		FUNC3(push, 0x0900 + head->base.index * 0x400, 1);
		FUNC1(push, bounds);
		FUNC2(push, core);
	}
}