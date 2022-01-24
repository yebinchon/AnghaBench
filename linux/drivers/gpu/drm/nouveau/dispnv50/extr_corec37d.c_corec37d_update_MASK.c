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
typedef  int u32 ;
struct nv50_core {int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int NV50_DISP_CORE_NTFY ; 
 size_t NV50_DISP_INTERLOCK_CURS ; 
 size_t NV50_DISP_INTERLOCK_WNDW ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 
 int* FUNC3 (int /*<<< orphan*/ *,int) ; 

void
FUNC4(struct nv50_core *core, u32 *interlock, bool ntfy)
{
	u32 *push;
	if ((push = FUNC3(&core->chan, 9))) {
		if (ntfy) {
			FUNC2(push, 0x020c, 1);
			FUNC0(push, 0x00001000 | NV50_DISP_CORE_NTFY);
		}

		FUNC2(push, 0x0218, 2);
		FUNC0(push, interlock[NV50_DISP_INTERLOCK_CURS]);
		FUNC0(push, interlock[NV50_DISP_INTERLOCK_WNDW]);
		FUNC2(push, 0x0200, 1);
		FUNC0(push, 0x00000001);

		if (ntfy) {
			FUNC2(push, 0x020c, 1);
			FUNC0(push, 0x00000000);
		}
		FUNC1(push, &core->chan);
	}
}