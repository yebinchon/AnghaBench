#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int mode; int interval; int* handle; int* offset; int h; int w; int layout; int* pitch; int* blocks; int blockh; int format; } ;
struct nv50_wndw_atom {TYPE_1__ image; } ;
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
	if ((push = FUNC3(&wndw->wndw, 10))) {
		FUNC2(push, 0x0084, 1);
		FUNC0(push, asyw->image.mode << 8 |
			       asyw->image.interval << 4);
		FUNC2(push, 0x00c0, 1);
		FUNC0(push, asyw->image.handle[0]);
		FUNC2(push, 0x0400, 5);
		FUNC0(push, asyw->image.offset[0] >> 8);
		FUNC0(push, 0x00000000);
		FUNC0(push, asyw->image.h << 16 | asyw->image.w);
		FUNC0(push, asyw->image.layout << 24 |
			       (asyw->image.pitch[0] >> 8) << 8 |
			       asyw->image.blocks[0] << 8 |
			       asyw->image.blockh);
		FUNC0(push, asyw->image.format << 8);
		FUNC1(push, &wndw->wndw);
	}
}