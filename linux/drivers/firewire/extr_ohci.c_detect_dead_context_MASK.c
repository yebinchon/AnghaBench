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
struct fw_ohci {int dummy; } ;

/* Variables and functions */
 int CONTEXT_DEAD ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/ * evts ; 
 int /*<<< orphan*/  FUNC1 (struct fw_ohci*,char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fw_ohci*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fw_ohci *ohci,
				const char *name, unsigned int regs)
{
	u32 ctl;

	ctl = FUNC2(ohci, FUNC0(regs));
	if (ctl & CONTEXT_DEAD)
		FUNC1(ohci, "DMA context %s has stopped, error code: %s\n",
			name, evts[ctl & 0x1f]);
}