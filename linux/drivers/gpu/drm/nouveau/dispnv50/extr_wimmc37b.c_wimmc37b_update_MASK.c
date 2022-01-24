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
typedef  int u32 ;
struct TYPE_2__ {int data; } ;
struct nv50_wndw {int /*<<< orphan*/  wimm; TYPE_1__ interlock; } ;

/* Variables and functions */
 size_t NV50_DISP_INTERLOCK_WNDW ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 
 int* FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(struct nv50_wndw *wndw, u32 *interlock)
{
	u32 *push;
	if ((push = FUNC3(&wndw->wimm, 2))) {
		FUNC2(push, 0x0200, 1);
		if (interlock[NV50_DISP_INTERLOCK_WNDW] & wndw->interlock.data)
			FUNC0(push, 0x00000003);
		else
			FUNC0(push, 0x00000001);
		FUNC1(push, &wndw->wimm);
	}
}