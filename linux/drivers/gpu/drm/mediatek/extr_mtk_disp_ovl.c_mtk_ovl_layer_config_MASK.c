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
struct mtk_plane_pending_state {unsigned int addr; int pitch; unsigned int format; int y; int x; int height; int width; scalar_t__ enable; } ;
struct mtk_plane_state {struct mtk_plane_pending_state pending; } ;
struct mtk_disp_ovl {int dummy; } ;
struct mtk_ddp_comp {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mtk_disp_ovl*,unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 unsigned int OVL_CON_AEN ; 
 unsigned int OVL_CON_ALPHA ; 
 struct mtk_disp_ovl* FUNC5 (struct mtk_ddp_comp*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_ddp_comp*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_ddp_comp*,unsigned int) ; 
 unsigned int FUNC8 (struct mtk_disp_ovl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct mtk_ddp_comp *comp, unsigned int idx,
				 struct mtk_plane_state *state)
{
	struct mtk_disp_ovl *ovl = FUNC5(comp);
	struct mtk_plane_pending_state *pending = &state->pending;
	unsigned int addr = pending->addr;
	unsigned int pitch = pending->pitch & 0xffff;
	unsigned int fmt = pending->format;
	unsigned int offset = (pending->y << 16) | pending->x;
	unsigned int src_size = (pending->height << 16) | pending->width;
	unsigned int con;

	if (!pending->enable)
		FUNC6(comp, idx);

	con = FUNC8(ovl, fmt);
	if (idx != 0)
		con |= OVL_CON_AEN | OVL_CON_ALPHA;

	FUNC9(con, comp->regs + FUNC1(idx));
	FUNC9(pitch, comp->regs + FUNC3(idx));
	FUNC9(src_size, comp->regs + FUNC4(idx));
	FUNC9(offset, comp->regs + FUNC2(idx));
	FUNC9(addr, comp->regs + FUNC0(ovl, idx));

	if (pending->enable)
		FUNC7(comp, idx);
}