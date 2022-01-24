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
struct TYPE_4__ {int* hpd; int* afmt; int /*<<< orphan*/ * pflip; scalar_t__* crtc_vblank_int; scalar_t__ dpm_thermal; int /*<<< orphan*/ * ring_int; int /*<<< orphan*/  installed; } ;
struct TYPE_3__ {int /*<<< orphan*/  enabled; } ;
struct radeon_device {scalar_t__ family; int num_crtc; TYPE_2__ irq; TYPE_1__ ih; } ;

/* Variables and functions */
 scalar_t__ AFMT_AUDIO_PACKET_CONTROL ; 
 int AFMT_AZ_FORMAT_WTRIG_MASK ; 
 scalar_t__ CAYMAN_DMA1_CNTL ; 
 size_t CAYMAN_RING_TYPE_CP1_INDEX ; 
 size_t CAYMAN_RING_TYPE_CP2_INDEX ; 
 size_t CAYMAN_RING_TYPE_DMA1_INDEX ; 
 scalar_t__ CG_THERMAL_INT ; 
 scalar_t__ CHIP_ARUBA ; 
 scalar_t__ CHIP_CAYMAN ; 
 int CNTX_BUSY_INT_ENABLE ; 
 int CNTX_EMPTY_INT_ENABLE ; 
 scalar_t__ CP_INT_CNTL ; 
 scalar_t__ FUNC0 (int) ; 
 int DC_HPDx_INT_EN ; 
 int DC_HPDx_RX_INT_EN ; 
 scalar_t__ DMA_CNTL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 scalar_t__ GRBM_INT_CNTL ; 
 scalar_t__ GRPH_INT_CONTROL ; 
 int GRPH_PFLIP_INT_MASK ; 
 scalar_t__ INT_MASK ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int RB_INT_ENABLE ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ SRBM_STATUS ; 
 int THERM_INT_MASK_HIGH ; 
 int THERM_INT_MASK_LOW ; 
 int TIME_STAMP_INT_ENABLE ; 
 scalar_t__ TN_CG_THERMAL_INT_CTRL ; 
 int TRAP_ENABLE ; 
 int VBLANK_INT_MASK ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int,int) ; 
 scalar_t__* crtc_offsets ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,scalar_t__,int,int,char*,int) ; 

int FUNC10(struct radeon_device *rdev)
{
	int i;
	u32 cp_int_cntl = CNTX_BUSY_INT_ENABLE | CNTX_EMPTY_INT_ENABLE;
	u32 cp_int_cntl1 = 0, cp_int_cntl2 = 0;
	u32 grbm_int_cntl = 0;
	u32 dma_cntl, dma_cntl1 = 0;
	u32 thermal_int = 0;

	if (!rdev->irq.installed) {
		FUNC3(1, "Can't enable IRQ/MSI because no handler is installed\n");
		return -EINVAL;
	}
	/* don't enable anything if the ih is disabled */
	if (!rdev->ih.enabled) {
		FUNC8(rdev);
		/* force the active interrupt state to all disabled */
		FUNC7(rdev);
		return 0;
	}

	if (rdev->family == CHIP_ARUBA)
		thermal_int = FUNC2(TN_CG_THERMAL_INT_CTRL) &
			~(THERM_INT_MASK_HIGH | THERM_INT_MASK_LOW);
	else
		thermal_int = FUNC2(CG_THERMAL_INT) &
			~(THERM_INT_MASK_HIGH | THERM_INT_MASK_LOW);

	dma_cntl = FUNC2(DMA_CNTL) & ~TRAP_ENABLE;

	if (rdev->family >= CHIP_CAYMAN) {
		/* enable CP interrupts on all rings */
		if (FUNC5(&rdev->irq.ring_int[RADEON_RING_TYPE_GFX_INDEX])) {
			FUNC1("evergreen_irq_set: sw int gfx\n");
			cp_int_cntl |= TIME_STAMP_INT_ENABLE;
		}
		if (FUNC5(&rdev->irq.ring_int[CAYMAN_RING_TYPE_CP1_INDEX])) {
			FUNC1("evergreen_irq_set: sw int cp1\n");
			cp_int_cntl1 |= TIME_STAMP_INT_ENABLE;
		}
		if (FUNC5(&rdev->irq.ring_int[CAYMAN_RING_TYPE_CP2_INDEX])) {
			FUNC1("evergreen_irq_set: sw int cp2\n");
			cp_int_cntl2 |= TIME_STAMP_INT_ENABLE;
		}
	} else {
		if (FUNC5(&rdev->irq.ring_int[RADEON_RING_TYPE_GFX_INDEX])) {
			FUNC1("evergreen_irq_set: sw int gfx\n");
			cp_int_cntl |= RB_INT_ENABLE;
			cp_int_cntl |= TIME_STAMP_INT_ENABLE;
		}
	}

	if (FUNC5(&rdev->irq.ring_int[R600_RING_TYPE_DMA_INDEX])) {
		FUNC1("r600_irq_set: sw int dma\n");
		dma_cntl |= TRAP_ENABLE;
	}

	if (rdev->family >= CHIP_CAYMAN) {
		dma_cntl1 = FUNC2(CAYMAN_DMA1_CNTL) & ~TRAP_ENABLE;
		if (FUNC5(&rdev->irq.ring_int[CAYMAN_RING_TYPE_DMA1_INDEX])) {
			FUNC1("r600_irq_set: sw int dma1\n");
			dma_cntl1 |= TRAP_ENABLE;
		}
	}

	if (rdev->irq.dpm_thermal) {
		FUNC1("dpm thermal\n");
		thermal_int |= THERM_INT_MASK_HIGH | THERM_INT_MASK_LOW;
	}

	if (rdev->family >= CHIP_CAYMAN) {
		FUNC6(rdev, 0, cp_int_cntl);
		FUNC6(rdev, 1, cp_int_cntl1);
		FUNC6(rdev, 2, cp_int_cntl2);
	} else
		FUNC4(CP_INT_CNTL, cp_int_cntl);

	FUNC4(DMA_CNTL, dma_cntl);

	if (rdev->family >= CHIP_CAYMAN)
		FUNC4(CAYMAN_DMA1_CNTL, dma_cntl1);

	FUNC4(GRBM_INT_CNTL, grbm_int_cntl);

	for (i = 0; i < rdev->num_crtc; i++) {
		FUNC9(
		    rdev, INT_MASK + crtc_offsets[i],
		    VBLANK_INT_MASK,
		    rdev->irq.crtc_vblank_int[i] ||
		    FUNC5(&rdev->irq.pflip[i]), "vblank", i);
	}

	for (i = 0; i < rdev->num_crtc; i++)
		FUNC4(GRPH_INT_CONTROL + crtc_offsets[i], GRPH_PFLIP_INT_MASK);

	for (i = 0; i < 6; i++) {
		FUNC9(
		    rdev, FUNC0(i),
		    DC_HPDx_INT_EN | DC_HPDx_RX_INT_EN,
		    rdev->irq.hpd[i], "HPD", i);
	}

	if (rdev->family == CHIP_ARUBA)
		FUNC4(TN_CG_THERMAL_INT_CTRL, thermal_int);
	else
		FUNC4(CG_THERMAL_INT, thermal_int);

	for (i = 0; i < 6; i++) {
		FUNC9(
		    rdev, AFMT_AUDIO_PACKET_CONTROL + crtc_offsets[i],
		    AFMT_AZ_FORMAT_WTRIG_MASK,
		    rdev->irq.afmt[i], "HDMI", i);
	}

	/* posting read */
	FUNC2(SRBM_STATUS);

	return 0;
}