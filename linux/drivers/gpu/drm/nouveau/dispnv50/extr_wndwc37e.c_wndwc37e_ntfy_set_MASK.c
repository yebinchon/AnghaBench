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
struct TYPE_2__ {int handle; int offset; int awaken; } ;
struct nv50_wndw_atom {TYPE_1__ ntfy; } ;
struct nv50_wndw {int /*<<< orphan*/  wndw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 

void
FUNC4(struct nv50_wndw *wndw, struct nv50_wndw_atom *asyw)
{
	u32 *push;
	if ((push = FUNC3(&wndw->wndw, 3))) {
		FUNC2(push, 0x021c, 2);
		FUNC0(push, asyw->ntfy.handle);
		FUNC0(push, asyw->ntfy.offset | asyw->ntfy.awaken);
		FUNC1(push, &wndw->wndw);
	}
}