#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_10__ {int active; int synce; int blanke; int blanks; int blank2e; int blank2s; } ;
struct TYPE_9__ {int active; int synce; int blanke; int blanks; } ;
struct nv50_head_mode {int clock; TYPE_4__ v; TYPE_3__ h; } ;
struct nv50_head_atom {struct nv50_head_mode mode; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int index; TYPE_2__ base; } ;
struct nv50_head {TYPE_5__ base; } ;
struct nv50_dmac {int dummy; } ;
struct TYPE_12__ {TYPE_1__* core; } ;
struct TYPE_7__ {struct nv50_dmac chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nv50_dmac*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct nv50_dmac*,int) ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct nv50_head *head, struct nv50_head_atom *asyh)
{
	struct nv50_dmac *core = &FUNC4(head->base.base.dev)->core->chan;
	struct nv50_head_mode *m = &asyh->mode;
	u32 *push;
	if ((push = FUNC3(core, 12))) {
		FUNC2(push, 0x2064 + (head->base.index * 0x400), 5);
		FUNC0(push, (m->v.active  << 16) | m->h.active );
		FUNC0(push, (m->v.synce   << 16) | m->h.synce  );
		FUNC0(push, (m->v.blanke  << 16) | m->h.blanke );
		FUNC0(push, (m->v.blanks  << 16) | m->h.blanks );
		FUNC0(push, (m->v.blank2e << 16) | m->v.blank2s);
		FUNC2(push, 0x200c + (head->base.index * 0x400), 1);
		FUNC0(push, m->clock * 1000);
		FUNC2(push, 0x2028 + (head->base.index * 0x400), 1);
		FUNC0(push, m->clock * 1000);
		/*XXX: HEAD_USAGE_BOUNDS, doesn't belong here. */
		FUNC2(push, 0x2030 + (head->base.index * 0x400), 1);
		FUNC0(push, 0x00000124);
		FUNC1(push, core);
	}
}