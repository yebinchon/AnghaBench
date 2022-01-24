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
struct TYPE_6__ {int layout; int format; int offset; } ;
struct nv50_head_atom {TYPE_1__ curs; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int index; TYPE_3__ base; } ;
struct nv50_head {TYPE_4__ base; } ;
struct nv50_dmac {int dummy; } ;
struct TYPE_10__ {TYPE_2__* core; } ;
struct TYPE_7__ {struct nv50_dmac chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nv50_dmac*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct nv50_dmac*,int) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct nv50_head *head, struct nv50_head_atom *asyh)
{
	struct nv50_dmac *core = &FUNC4(head->base.base.dev)->core->chan;
	u32 *push;
	if ((push = FUNC3(core, 3))) {
		FUNC2(push, 0x0880 + head->base.index * 0x400, 2);
		FUNC0(push, 0x80000000 | asyh->curs.layout << 26 |
					    asyh->curs.format << 24);
		FUNC0(push, asyh->curs.offset >> 8);
		FUNC1(push, core);
	}
}