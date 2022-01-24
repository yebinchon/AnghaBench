#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int* hpd; int /*<<< orphan*/ * pflip; scalar_t__* crtc_vblank_int; scalar_t__ dpm_thermal; int /*<<< orphan*/ * ring_int; int /*<<< orphan*/  installed; } ;
struct TYPE_3__ {int /*<<< orphan*/  enabled; } ;
struct radeon_device {int num_crtc; TYPE_2__ irq; TYPE_1__ ih; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 size_t CAYMAN_RING_TYPE_CP1_INDEX ; 
 size_t CAYMAN_RING_TYPE_CP2_INDEX ; 
 size_t CAYMAN_RING_TYPE_DMA1_INDEX ; 
 scalar_t__ CG_THERMAL_INT ; 
 int CNTX_BUSY_INT_ENABLE ; 
 int CNTX_EMPTY_INT_ENABLE ; 
 scalar_t__ CP_INT_CNTL_RING0 ; 
 scalar_t__ CP_INT_CNTL_RING1 ; 
 scalar_t__ CP_INT_CNTL_RING2 ; 
 scalar_t__ FUNC1 (int) ; 
 int DC_HPDx_INT_EN ; 
 int DC_HPDx_RX_INT_EN ; 
 scalar_t__ DMA0_REGISTER_OFFSET ; 
 scalar_t__ DMA1_REGISTER_OFFSET ; 
 scalar_t__ DMA_CNTL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EINVAL ; 
 scalar_t__ GRBM_INT_CNTL ; 
 scalar_t__ GRPH_INT_CONTROL ; 
 int GRPH_PFLIP_INT_MASK ; 
 scalar_t__ INT_MASK ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ SRBM_STATUS ; 
 int THERM_INT_MASK_HIGH ; 
 int THERM_INT_MASK_LOW ; 
 int TIME_STAMP_INT_ENABLE ; 
 int TRAP_ENABLE ; 
 int VBLANK_INT_MASK ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__* crtc_offsets ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,scalar_t__,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 

int FUNC10(struct radeon_device *rdev)
{
	int i;
	u32 cp_int_cntl;
	u32 cp_int_cntl1 = 0, cp_int_cntl2 = 0;
	u32 grbm_int_cntl = 0;
	u32 dma_cntl, dma_cntl1;
	u32 thermal_int = 0;

	if (!rdev->irq.installed) {
		FUNC4(1, "Can't enable IRQ/MSI because no handler is installed\n");
		return -EINVAL;
	}
	/* don't enable anything if the ih is disabled */
	if (!rdev->ih.enabled) {
		FUNC9(rdev);
		/* force the active interrupt state to all disabled */
		FUNC8(rdev);
		return 0;
	}

	cp_int_cntl = FUNC3(CP_INT_CNTL_RING0) &
		(CNTX_BUSY_INT_ENABLE | CNTX_EMPTY_INT_ENABLE);

	dma_cntl = FUNC3(DMA_CNTL + DMA0_REGISTER_OFFSET) & ~TRAP_ENABLE;
	dma_cntl1 = FUNC3(DMA_CNTL + DMA1_REGISTER_OFFSET) & ~TRAP_ENABLE;

	thermal_int = FUNC3(CG_THERMAL_INT) &
		~(THERM_INT_MASK_HIGH | THERM_INT_MASK_LOW);

	/* enable CP interrupts on all rings */
	if (FUNC6(&rdev->irq.ring_int[RADEON_RING_TYPE_GFX_INDEX])) {
		FUNC2("si_irq_set: sw int gfx\n");
		cp_int_cntl |= TIME_STAMP_INT_ENABLE;
	}
	if (FUNC6(&rdev->irq.ring_int[CAYMAN_RING_TYPE_CP1_INDEX])) {
		FUNC2("si_irq_set: sw int cp1\n");
		cp_int_cntl1 |= TIME_STAMP_INT_ENABLE;
	}
	if (FUNC6(&rdev->irq.ring_int[CAYMAN_RING_TYPE_CP2_INDEX])) {
		FUNC2("si_irq_set: sw int cp2\n");
		cp_int_cntl2 |= TIME_STAMP_INT_ENABLE;
	}
	if (FUNC6(&rdev->irq.ring_int[R600_RING_TYPE_DMA_INDEX])) {
		FUNC2("si_irq_set: sw int dma\n");
		dma_cntl |= TRAP_ENABLE;
	}

	if (FUNC6(&rdev->irq.ring_int[CAYMAN_RING_TYPE_DMA1_INDEX])) {
		FUNC2("si_irq_set: sw int dma1\n");
		dma_cntl1 |= TRAP_ENABLE;
	}

	FUNC5(CP_INT_CNTL_RING0, cp_int_cntl);
	FUNC5(CP_INT_CNTL_RING1, cp_int_cntl1);
	FUNC5(CP_INT_CNTL_RING2, cp_int_cntl2);

	FUNC5(DMA_CNTL + DMA0_REGISTER_OFFSET, dma_cntl);
	FUNC5(DMA_CNTL + DMA1_REGISTER_OFFSET, dma_cntl1);

	FUNC5(GRBM_INT_CNTL, grbm_int_cntl);

	if (rdev->irq.dpm_thermal) {
		FUNC2("dpm thermal\n");
		thermal_int |= THERM_INT_MASK_HIGH | THERM_INT_MASK_LOW;
	}

	for (i = 0; i < rdev->num_crtc; i++) {
		FUNC7(
		    rdev, INT_MASK + crtc_offsets[i], VBLANK_INT_MASK,
		    rdev->irq.crtc_vblank_int[i] ||
		    FUNC6(&rdev->irq.pflip[i]), "vblank", i);
	}

	for (i = 0; i < rdev->num_crtc; i++)
		FUNC5(GRPH_INT_CONTROL + crtc_offsets[i], GRPH_PFLIP_INT_MASK);

	if (!FUNC0(rdev)) {
		for (i = 0; i < 6; i++) {
			FUNC7(
			    rdev, FUNC1(i),
			    DC_HPDx_INT_EN | DC_HPDx_RX_INT_EN,
			    rdev->irq.hpd[i], "HPD", i);
		}
	}

	FUNC5(CG_THERMAL_INT, thermal_int);

	/* posting read */
	FUNC3(SRBM_STATUS);

	return 0;
}