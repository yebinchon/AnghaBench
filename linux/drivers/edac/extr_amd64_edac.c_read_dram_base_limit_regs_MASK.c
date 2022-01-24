#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct amd_northbridge {TYPE_4__* misc; } ;
struct amd64_pvt {int fam; int model; TYPE_3__* ranges; struct pci_dev* F1; } ;
struct TYPE_8__ {int /*<<< orphan*/  vendor; } ;
struct TYPE_6__ {int lo; int hi; } ;
struct TYPE_5__ {int lo; int hi; } ;
struct TYPE_7__ {TYPE_2__ lim; TYPE_1__ base; } ;

/* Variables and functions */
 scalar_t__ DRAM_BASE_HI ; 
 scalar_t__ DRAM_BASE_LO ; 
 scalar_t__ DRAM_LIMIT_HI ; 
 scalar_t__ DRAM_LIMIT_LO ; 
 scalar_t__ DRAM_LOCAL_NODE_LIM ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned int PCI_DEVICE_ID_AMD_15H_M30H_NB_F1 ; 
 unsigned int PCI_DEVICE_ID_AMD_15H_M60H_NB_F1 ; 
 unsigned int PCI_DEVICE_ID_AMD_15H_NB_F1 ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct amd64_pvt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct amd64_pvt*,unsigned int) ; 
 struct amd_northbridge* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct pci_dev* FUNC7 (int /*<<< orphan*/ ,unsigned int,TYPE_4__*) ; 

__attribute__((used)) static void FUNC8(struct amd64_pvt *pvt, unsigned range)
{
	struct amd_northbridge *nb;
	struct pci_dev *f1 = NULL;
	unsigned int pci_func;
	int off = range << 3;
	u32 llim;

	FUNC2(pvt->F1, DRAM_BASE_LO + off,  &pvt->ranges[range].base.lo);
	FUNC2(pvt->F1, DRAM_LIMIT_LO + off, &pvt->ranges[range].lim.lo);

	if (pvt->fam == 0xf)
		return;

	if (!FUNC4(pvt, range))
		return;

	FUNC2(pvt->F1, DRAM_BASE_HI + off,  &pvt->ranges[range].base.hi);
	FUNC2(pvt->F1, DRAM_LIMIT_HI + off, &pvt->ranges[range].lim.hi);

	/* F15h: factor in CC6 save area by reading dst node's limit reg */
	if (pvt->fam != 0x15)
		return;

	nb = FUNC5(FUNC3(pvt, range));
	if (FUNC1(!nb))
		return;

	if (pvt->model == 0x60)
		pci_func = PCI_DEVICE_ID_AMD_15H_M60H_NB_F1;
	else if (pvt->model == 0x30)
		pci_func = PCI_DEVICE_ID_AMD_15H_M30H_NB_F1;
	else
		pci_func = PCI_DEVICE_ID_AMD_15H_NB_F1;

	f1 = FUNC7(nb->misc->vendor, pci_func, nb->misc);
	if (FUNC1(!f1))
		return;

	FUNC2(f1, DRAM_LOCAL_NODE_LIM, &llim);

	pvt->ranges[range].lim.lo &= FUNC0(15, 0);

				    /* {[39:27],111b} */
	pvt->ranges[range].lim.lo |= ((llim & 0x1fff) << 3 | 0x7) << 16;

	pvt->ranges[range].lim.hi &= FUNC0(7, 0);

				    /* [47:40] */
	pvt->ranges[range].lim.hi |= llim >> 13;

	FUNC6(f1);
}