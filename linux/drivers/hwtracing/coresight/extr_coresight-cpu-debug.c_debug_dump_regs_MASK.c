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
struct device {int dummy; } ;
struct debug_drvdata {int edprsr; scalar_t__ edpcsr; int edvidsr; scalar_t__ edvidsr_present; int /*<<< orphan*/  edcidsr; scalar_t__ edcidsr_present; struct device* dev; } ;

/* Variables and functions */
 scalar_t__ EDPCSR_PROHIBITED ; 
 int EDPRSR_DLK ; 
 int EDPRSR_PU ; 
 int EDVIDSR_E2 ; 
 int EDVIDSR_E3 ; 
 int EDVIDSR_HV ; 
 int EDVIDSR_NS ; 
 scalar_t__ EDVIDSR_VMID ; 
 int /*<<< orphan*/  FUNC0 (struct debug_drvdata*) ; 
 unsigned long FUNC1 (struct debug_drvdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 

__attribute__((used)) static void FUNC3(struct debug_drvdata *drvdata)
{
	struct device *dev = drvdata->dev;
	unsigned long pc;

	FUNC2(dev, " EDPRSR:  %08x (Power:%s DLK:%s)\n",
		  drvdata->edprsr,
		  drvdata->edprsr & EDPRSR_PU ? "On" : "Off",
		  drvdata->edprsr & EDPRSR_DLK ? "Lock" : "Unlock");

	if (!FUNC0(drvdata)) {
		FUNC2(dev, "No permission to access debug registers!\n");
		return;
	}

	if (drvdata->edpcsr == EDPCSR_PROHIBITED) {
		FUNC2(dev, "CPU is in Debug state or profiling is prohibited!\n");
		return;
	}

	pc = FUNC1(drvdata);
	FUNC2(dev, " EDPCSR:  %pS\n", (void *)pc);

	if (drvdata->edcidsr_present)
		FUNC2(dev, " EDCIDSR: %08x\n", drvdata->edcidsr);

	if (drvdata->edvidsr_present)
		FUNC2(dev, " EDVIDSR: %08x (State:%s Mode:%s Width:%dbits VMID:%x)\n",
			  drvdata->edvidsr,
			  drvdata->edvidsr & EDVIDSR_NS ?
			  "Non-secure" : "Secure",
			  drvdata->edvidsr & EDVIDSR_E3 ? "EL3" :
				(drvdata->edvidsr & EDVIDSR_E2 ?
				 "EL2" : "EL1/0"),
			  drvdata->edvidsr & EDVIDSR_HV ? 64 : 32,
			  drvdata->edvidsr & (u32)EDVIDSR_VMID);
}