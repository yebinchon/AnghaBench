#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {int ppi_nr; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQCHIP_SUPPORTS_NMI ; 
 TYPE_3__ gic_chip ; 
 TYPE_2__ gic_data ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ gic_eoimode1_chip ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ppi_nmi_refs ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  supports_deactivate_key ; 
 int /*<<< orphan*/  supports_pseudo_nmis ; 

__attribute__((used)) static void FUNC8(void)
{
	int i;

	if (!FUNC2())
		return;

	if (FUNC1() && !FUNC0()) {
		FUNC4("SCR_EL3.FIQ is cleared, cannot enable use of pseudo-NMIs\n");
		return;
	}

	ppi_nmi_refs = FUNC3(gic_data.ppi_nr, sizeof(*ppi_nmi_refs), GFP_KERNEL);
	if (!ppi_nmi_refs)
		return;

	for (i = 0; i < gic_data.ppi_nr; i++)
		FUNC5(&ppi_nmi_refs[i], 0);

	FUNC6(&supports_pseudo_nmis);

	if (FUNC7(&supports_deactivate_key))
		gic_eoimode1_chip.flags |= IRQCHIP_SUPPORTS_NMI;
	else
		gic_chip.flags |= IRQCHIP_SUPPORTS_NMI;
}