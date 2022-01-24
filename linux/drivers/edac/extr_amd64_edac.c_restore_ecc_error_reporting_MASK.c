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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nb_ecc_prev; } ;
struct ecc_settings {int old_nbctl; TYPE_1__ flags; int /*<<< orphan*/  nbctl_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  NBCFG ; 
 int NBCFG_ECC_ENABLE ; 
 int /*<<< orphan*/  NBCTL ; 
 int /*<<< orphan*/  OFF ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct ecc_settings*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ecc_settings *s, u16 nid,
					struct pci_dev *F3)
{
	u32 value, mask = 0x3;		/* UECC/CECC enable */

	if (!s->nbctl_valid)
		return;

	FUNC0(F3, NBCTL, &value);
	value &= ~mask;
	value |= s->old_nbctl;

	FUNC2(F3, NBCTL, value);

	/* restore previous BIOS DRAM ECC "off" setting we force-enabled */
	if (!s->flags.nb_ecc_prev) {
		FUNC0(F3, NBCFG, &value);
		value &= ~NBCFG_ECC_ENABLE;
		FUNC2(F3, NBCFG, value);
	}

	/* restore the NB Enable MCGCTL bit */
	if (FUNC3(s, nid, OFF))
		FUNC1("Error restoring NB MCGCTL settings!\n");
}