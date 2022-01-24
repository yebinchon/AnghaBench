#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int handle; } ;
struct TYPE_5__ {TYPE_1__ sync; } ;
struct nv50_core {TYPE_2__ chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 
 int* FUNC3 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC4(struct nv50_core *core)
{
	const u32 windows = 8; /*XXX*/
	u32 *push, i;
	if ((push = FUNC3(&core->chan, 2 + 6 * windows + 2))) {
		FUNC2(push, 0x0208, 1);
		FUNC0(push, core->chan.sync.handle);
		for (i = 0; i < windows; i++) {
			FUNC2(push, 0x1000 + (i * 0x080), 3);
			FUNC0(push, i >> 1);
			FUNC0(push, 0x0000000f);
			FUNC0(push, 0x00000000);
			FUNC2(push, 0x1010 + (i * 0x080), 1);
			FUNC0(push, 0x00117fff);
		}
		FUNC2(push, 0x0200, 1);
		FUNC0(push, 0x00000001);
		FUNC1(push, &core->chan);
	}
}