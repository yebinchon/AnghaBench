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
struct TYPE_2__ {int dpe; int sse; int rma; int rta; int sta; int mdpe; } ;
union cvmx_pci_cfg01 {int /*<<< orphan*/  u32; TYPE_1__ s; } ;
struct edac_pci_ctl_info {int /*<<< orphan*/  ctl_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_NPI_PCI_CFG01 ; 
 int /*<<< orphan*/  FUNC0 (struct edac_pci_ctl_info*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct edac_pci_ctl_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct edac_pci_ctl_info *pci)
{
	union cvmx_pci_cfg01 cfg01;

	cfg01.u32 = FUNC2(CVMX_NPI_PCI_CFG01);
	if (cfg01.s.dpe) {		/* Detected parity error */
		FUNC1(pci, pci->ctl_name);
		cfg01.s.dpe = 1;		/* Reset  */
		FUNC3(CVMX_NPI_PCI_CFG01, cfg01.u32);
	}
	if (cfg01.s.sse) {
		FUNC0(pci, "Signaled System Error");
		cfg01.s.sse = 1;		/* Reset */
		FUNC3(CVMX_NPI_PCI_CFG01, cfg01.u32);
	}
	if (cfg01.s.rma) {
		FUNC0(pci, "Received Master Abort");
		cfg01.s.rma = 1;		/* Reset */
		FUNC3(CVMX_NPI_PCI_CFG01, cfg01.u32);
	}
	if (cfg01.s.rta) {
		FUNC0(pci, "Received Target Abort");
		cfg01.s.rta = 1;		/* Reset */
		FUNC3(CVMX_NPI_PCI_CFG01, cfg01.u32);
	}
	if (cfg01.s.sta) {
		FUNC0(pci, "Signaled Target Abort");
		cfg01.s.sta = 1;		/* Reset */
		FUNC3(CVMX_NPI_PCI_CFG01, cfg01.u32);
	}
	if (cfg01.s.mdpe) {
		FUNC0(pci, "Master Data Parity Error");
		cfg01.s.mdpe = 1;		/* Reset */
		FUNC3(CVMX_NPI_PCI_CFG01, cfg01.u32);
	}
}