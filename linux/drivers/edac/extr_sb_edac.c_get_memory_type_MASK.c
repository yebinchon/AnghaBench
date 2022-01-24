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
struct TYPE_2__ {int /*<<< orphan*/  rankcfgr; } ;
struct sbridge_pvt {TYPE_1__ info; scalar_t__ pci_ddrio; } ;
typedef  enum mem_type { ____Placeholder_mem_type } mem_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int MEM_DDR3 ; 
 int MEM_RDDR3 ; 
 int MEM_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum mem_type FUNC2(struct sbridge_pvt *pvt)
{
	u32 reg;
	enum mem_type mtype;

	if (pvt->pci_ddrio) {
		FUNC1(pvt->pci_ddrio, pvt->info.rankcfgr,
				      &reg);
		if (FUNC0(reg, 11, 11))
			/* FIXME: Can also be LRDIMM */
			mtype = MEM_RDDR3;
		else
			mtype = MEM_DDR3;
	} else
		mtype = MEM_UNKNOWN;

	return mtype;
}