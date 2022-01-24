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
struct TYPE_3__ {int enable; int mode; int offset; } ;
struct TYPE_4__ {int handle; TYPE_1__ i; } ;
struct nv50_wndw_atom {TYPE_2__ xlut; } ;
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
	if ((push = FUNC3(&wndw->wndw, 6))) {
		FUNC2(push, 0x00e0, 3);
		FUNC0(push, asyw->xlut.i.enable << 30 |
			       asyw->xlut.i.mode << 24);
		FUNC0(push, asyw->xlut.i.offset >> 8);
		FUNC0(push, 0x40000000);
		FUNC2(push, 0x00fc, 1);
		FUNC0(push, asyw->xlut.handle);
		FUNC1(push, &wndw->wndw);
	}
}