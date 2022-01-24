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
struct drm_printer {int dummy; } ;
struct debugfs_regset32 {int nregs; TYPE_1__* regs; scalar_t__ base; } ;
struct TYPE_2__ {scalar_t__ offset; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct drm_printer *p, struct debugfs_regset32 *regset)
{
	int namelen = 0;
	int i;

	for (i = 0; i < regset->nregs; i++)
		namelen = FUNC1(namelen, (int)FUNC3(regset->regs[i].name));

	for (i = 0; i < regset->nregs; i++) {
		FUNC0(p, "%*s = 0x%08x\n",
			   namelen, regset->regs[i].name,
			   FUNC2(regset->base + regset->regs[i].offset));
	}
}