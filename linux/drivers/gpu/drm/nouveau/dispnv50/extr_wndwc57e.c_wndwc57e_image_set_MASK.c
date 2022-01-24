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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int src_y; int src_x; int src_h; int src_w; int crtc_h; int crtc_w; } ;
struct TYPE_3__ {int mode; int interval; int h; int w; int layout; int blockh; int colorspace; int format; int* blocks; int* pitch; int* handle; int* offset; } ;
struct nv50_wndw_atom {TYPE_2__ state; TYPE_1__ image; } ;
struct nv50_wndw {int /*<<< orphan*/  wndw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(struct nv50_wndw *wndw, struct nv50_wndw_atom *asyw)
{
	u32 *push;

	if (!(push = FUNC3(&wndw->wndw, 17)))
		return;

	FUNC2(push, 0x0308, 1);
	FUNC0(push, asyw->image.mode << 4 | asyw->image.interval);
	FUNC2(push, 0x0224, 4);
	FUNC0(push, asyw->image.h << 16 | asyw->image.w);
	FUNC0(push, asyw->image.layout << 4 | asyw->image.blockh);
	FUNC0(push, asyw->image.colorspace << 8 |
		       asyw->image.format);
	FUNC0(push, asyw->image.blocks[0] | (asyw->image.pitch[0] >> 6));
	FUNC2(push, 0x0240, 1);
	FUNC0(push, asyw->image.handle[0]);
	FUNC2(push, 0x0260, 1);
	FUNC0(push, asyw->image.offset[0] >> 8);
	FUNC2(push, 0x0290, 1);
	FUNC0(push, (asyw->state.src_y >> 16) << 16 |
		       (asyw->state.src_x >> 16));
	FUNC2(push, 0x0298, 1);
	FUNC0(push, (asyw->state.src_h >> 16) << 16 |
		       (asyw->state.src_w >> 16));
	FUNC2(push, 0x02a4, 1);
	FUNC0(push, asyw->state.crtc_h << 16 |
		       asyw->state.crtc_w);
	FUNC1(push, &wndw->wndw);
}