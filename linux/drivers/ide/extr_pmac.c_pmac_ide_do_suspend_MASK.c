#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  aapl_bus_id; int /*<<< orphan*/  node; scalar_t__ kauai_fcr; int /*<<< orphan*/  irq; scalar_t__* timings; } ;
typedef  TYPE_1__ pmac_ide_hwif_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* feature_call ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int KAUAI_FCR_UATA_ENABLE ; 
 int KAUAI_FCR_UATA_RESET_N ; 
 int /*<<< orphan*/  PMAC_FTR_IDE_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 TYPE_2__ ppc_md ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(pmac_ide_hwif_t *pmif)
{
	/* We clear the timings */
	pmif->timings[0] = 0;
	pmif->timings[1] = 0;
	
	FUNC0(pmif->irq);

	/* The media bay will handle itself just fine */
	if (FUNC1(pmif))
		return 0;
	
	/* Kauai has bus control FCRs directly here */
	if (pmif->kauai_fcr) {
		u32 fcr = FUNC2(pmif->kauai_fcr);
		fcr &= ~(KAUAI_FCR_UATA_RESET_N | KAUAI_FCR_UATA_ENABLE);
		FUNC4(fcr, pmif->kauai_fcr);
	}

	/* Disable the bus on older machines and the cell on kauai */
	ppc_md.feature_call(PMAC_FTR_IDE_ENABLE, pmif->node, pmif->aapl_bus_id,
			    0);

	return 0;
}