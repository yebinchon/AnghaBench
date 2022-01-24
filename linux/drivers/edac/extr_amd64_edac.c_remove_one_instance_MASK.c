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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct mem_ctl_info {struct ecc_settings* pvt_info; } ;
struct ecc_settings {int dummy; } ;
typedef  struct ecc_settings amd64_pvt ;
struct TYPE_2__ {struct pci_dev* misc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ecc_settings** ecc_stngs ; 
 struct mem_ctl_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*) ; 
 struct mem_ctl_info* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ecc_settings*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecc_settings*) ; 
 TYPE_1__* FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct ecc_settings*,unsigned int,struct pci_dev*) ; 

__attribute__((used)) static void FUNC8(unsigned int nid)
{
	struct pci_dev *F3 = FUNC6(nid)->misc;
	struct ecc_settings *s = ecc_stngs[nid];
	struct mem_ctl_info *mci;
	struct amd64_pvt *pvt;

	mci = FUNC3(&F3->dev);
	FUNC0(!mci);

	/* Remove from EDAC CORE tracking list */
	mci = FUNC1(&F3->dev);
	if (!mci)
		return;

	pvt = mci->pvt_info;

	FUNC7(s, nid, F3);

	FUNC4(pvt);

	FUNC5(ecc_stngs[nid]);
	ecc_stngs[nid] = NULL;

	/* Free the EDAC CORE resources */
	mci->pvt_info = NULL;

	FUNC5(pvt);
	FUNC2(mci);
}