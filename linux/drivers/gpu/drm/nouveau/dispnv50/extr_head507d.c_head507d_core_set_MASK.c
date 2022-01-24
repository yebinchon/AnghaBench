#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_15__ {scalar_t__ handle; } ;
struct TYPE_14__ {int olut; int /*<<< orphan*/  curs; } ;
struct TYPE_13__ {int /*<<< orphan*/  visible; } ;
struct TYPE_12__ {int offset; int h; int w; int layout; int pitch; int blocks; int blockh; int kind; int format; int handle; int y; int x; } ;
struct nv50_head_atom {TYPE_7__ olut; TYPE_6__ set; TYPE_5__ curs; TYPE_4__ core; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int index; TYPE_2__ base; } ;
struct nv50_head {TYPE_3__ base; } ;
struct nv50_dmac {int dummy; } ;
struct TYPE_16__ {TYPE_1__* core; } ;
struct TYPE_9__ {struct nv50_dmac chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nv50_dmac*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct nv50_dmac*,int) ; 
 TYPE_8__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct nv50_head *head, struct nv50_head_atom *asyh)
{
	struct nv50_dmac *core = &FUNC4(head->base.base.dev)->core->chan;
	u32 *push;
	if ((push = FUNC3(core, 9))) {
		FUNC2(push, 0x0860 + head->base.index * 0x400, 1);
		FUNC0(push, asyh->core.offset >> 8);
		FUNC2(push, 0x0868 + head->base.index * 0x400, 4);
		FUNC0(push, asyh->core.h << 16 | asyh->core.w);
		FUNC0(push, asyh->core.layout << 20 |
			       (asyh->core.pitch >> 8) << 8 |
			       asyh->core.blocks << 8 |
			       asyh->core.blockh);
		FUNC0(push, asyh->core.kind << 16 |
			       asyh->core.format << 8);
		FUNC0(push, asyh->core.handle);
		FUNC2(push, 0x08c0 + head->base.index * 0x400, 1);
		FUNC0(push, asyh->core.y << 16 | asyh->core.x);
		FUNC1(push, core);

		/* EVO will complain with INVALID_STATE if we have an
		 * active cursor and (re)specify HeadSetContextDmaIso
		 * without also updating HeadSetOffsetCursor.
		 */
		asyh->set.curs = asyh->curs.visible;
		asyh->set.olut = asyh->olut.handle != 0;
	}
}