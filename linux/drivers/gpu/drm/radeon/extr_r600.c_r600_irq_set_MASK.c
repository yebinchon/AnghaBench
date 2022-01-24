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
struct TYPE_4__ {scalar_t__* afmt; scalar_t__* hpd; int /*<<< orphan*/ * pflip; scalar_t__* crtc_vblank_int; int /*<<< orphan*/ * ring_int; scalar_t__ dpm_thermal; int /*<<< orphan*/  installed; } ;
struct TYPE_3__ {int /*<<< orphan*/  enabled; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ irq; TYPE_1__ ih; } ;

/* Variables and functions */
 scalar_t__ AFMT_AUDIO_PACKET_CONTROL ; 
 int AFMT_AZ_FORMAT_WTRIG_MASK ; 
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 scalar_t__ CG_THERMAL_INT ; 
 scalar_t__ CHIP_R600 ; 
 scalar_t__ CHIP_RV770 ; 
 int CNTX_BUSY_INT_ENABLE ; 
 int CNTX_EMPTY_INT_ENABLE ; 
 scalar_t__ CP_INT_CNTL ; 
 scalar_t__ D1GRPH_INTERRUPT_CONTROL ; 
 int D1MODE_VBLANK_INT_MASK ; 
 scalar_t__ D2GRPH_INTERRUPT_CONTROL ; 
 int D2MODE_VBLANK_INT_MASK ; 
 scalar_t__ DCE3_HDMI1_AUDIO_PACKET_CONTROL ; 
 scalar_t__ DCE3_HDMI_OFFSET0 ; 
 scalar_t__ DCE3_HDMI_OFFSET1 ; 
 scalar_t__ DC_HOT_PLUG_DETECT1_INT_CONTROL ; 
 scalar_t__ DC_HOT_PLUG_DETECT2_INT_CONTROL ; 
 scalar_t__ DC_HOT_PLUG_DETECT3_INT_CONTROL ; 
 scalar_t__ DC_HPD1_INT_CONTROL ; 
 scalar_t__ DC_HPD2_INT_CONTROL ; 
 scalar_t__ DC_HPD3_INT_CONTROL ; 
 scalar_t__ DC_HPD4_INT_CONTROL ; 
 scalar_t__ DC_HPD5_INT_CONTROL ; 
 scalar_t__ DC_HPD6_INT_CONTROL ; 
 int DC_HPDx_INT_EN ; 
 scalar_t__ DMA_CNTL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int DxGRPH_PFLIP_INT_MASK ; 
 scalar_t__ DxMODE_INT_MASK ; 
 int EINVAL ; 
 scalar_t__ GRBM_INT_CNTL ; 
 scalar_t__ HDMI0_AUDIO_PACKET_CONTROL ; 
 int HDMI0_AZ_FORMAT_WTRIG_MASK ; 
 scalar_t__ HDMI1_AUDIO_PACKET_CONTROL ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int RB_INT_ENABLE ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ RV770_CG_THERMAL_INT ; 
 scalar_t__ R_000E50_SRBM_STATUS ; 
 int THERM_INT_MASK_HIGH ; 
 int THERM_INT_MASK_LOW ; 
 int TIME_STAMP_INT_ENABLE ; 
 int TRAP_ENABLE ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 

int FUNC9(struct radeon_device *rdev)
{
	u32 cp_int_cntl = CNTX_BUSY_INT_ENABLE | CNTX_EMPTY_INT_ENABLE;
	u32 mode_int = 0;
	u32 hpd1, hpd2, hpd3, hpd4 = 0, hpd5 = 0, hpd6 = 0;
	u32 grbm_int_cntl = 0;
	u32 hdmi0, hdmi1;
	u32 dma_cntl;
	u32 thermal_int = 0;

	if (!rdev->irq.installed) {
		FUNC4(1, "Can't enable IRQ/MSI because no handler is installed\n");
		return -EINVAL;
	}
	/* don't enable anything if the ih is disabled */
	if (!rdev->ih.enabled) {
		FUNC8(rdev);
		/* force the active interrupt state to all disabled */
		FUNC7(rdev);
		return 0;
	}

	if (FUNC0(rdev)) {
		hpd1 = FUNC3(DC_HPD1_INT_CONTROL) & ~DC_HPDx_INT_EN;
		hpd2 = FUNC3(DC_HPD2_INT_CONTROL) & ~DC_HPDx_INT_EN;
		hpd3 = FUNC3(DC_HPD3_INT_CONTROL) & ~DC_HPDx_INT_EN;
		hpd4 = FUNC3(DC_HPD4_INT_CONTROL) & ~DC_HPDx_INT_EN;
		if (FUNC1(rdev)) {
			hpd5 = FUNC3(DC_HPD5_INT_CONTROL) & ~DC_HPDx_INT_EN;
			hpd6 = FUNC3(DC_HPD6_INT_CONTROL) & ~DC_HPDx_INT_EN;
			hdmi0 = FUNC3(AFMT_AUDIO_PACKET_CONTROL + DCE3_HDMI_OFFSET0) & ~AFMT_AZ_FORMAT_WTRIG_MASK;
			hdmi1 = FUNC3(AFMT_AUDIO_PACKET_CONTROL + DCE3_HDMI_OFFSET1) & ~AFMT_AZ_FORMAT_WTRIG_MASK;
		} else {
			hdmi0 = FUNC3(HDMI0_AUDIO_PACKET_CONTROL) & ~HDMI0_AZ_FORMAT_WTRIG_MASK;
			hdmi1 = FUNC3(DCE3_HDMI1_AUDIO_PACKET_CONTROL) & ~HDMI0_AZ_FORMAT_WTRIG_MASK;
		}
	} else {
		hpd1 = FUNC3(DC_HOT_PLUG_DETECT1_INT_CONTROL) & ~DC_HPDx_INT_EN;
		hpd2 = FUNC3(DC_HOT_PLUG_DETECT2_INT_CONTROL) & ~DC_HPDx_INT_EN;
		hpd3 = FUNC3(DC_HOT_PLUG_DETECT3_INT_CONTROL) & ~DC_HPDx_INT_EN;
		hdmi0 = FUNC3(HDMI0_AUDIO_PACKET_CONTROL) & ~HDMI0_AZ_FORMAT_WTRIG_MASK;
		hdmi1 = FUNC3(HDMI1_AUDIO_PACKET_CONTROL) & ~HDMI0_AZ_FORMAT_WTRIG_MASK;
	}

	dma_cntl = FUNC3(DMA_CNTL) & ~TRAP_ENABLE;

	if ((rdev->family > CHIP_R600) && (rdev->family < CHIP_RV770)) {
		thermal_int = FUNC3(CG_THERMAL_INT) &
			~(THERM_INT_MASK_HIGH | THERM_INT_MASK_LOW);
	} else if (rdev->family >= CHIP_RV770) {
		thermal_int = FUNC3(RV770_CG_THERMAL_INT) &
			~(THERM_INT_MASK_HIGH | THERM_INT_MASK_LOW);
	}
	if (rdev->irq.dpm_thermal) {
		FUNC2("dpm thermal\n");
		thermal_int |= THERM_INT_MASK_HIGH | THERM_INT_MASK_LOW;
	}

	if (FUNC6(&rdev->irq.ring_int[RADEON_RING_TYPE_GFX_INDEX])) {
		FUNC2("r600_irq_set: sw int\n");
		cp_int_cntl |= RB_INT_ENABLE;
		cp_int_cntl |= TIME_STAMP_INT_ENABLE;
	}

	if (FUNC6(&rdev->irq.ring_int[R600_RING_TYPE_DMA_INDEX])) {
		FUNC2("r600_irq_set: sw int dma\n");
		dma_cntl |= TRAP_ENABLE;
	}

	if (rdev->irq.crtc_vblank_int[0] ||
	    FUNC6(&rdev->irq.pflip[0])) {
		FUNC2("r600_irq_set: vblank 0\n");
		mode_int |= D1MODE_VBLANK_INT_MASK;
	}
	if (rdev->irq.crtc_vblank_int[1] ||
	    FUNC6(&rdev->irq.pflip[1])) {
		FUNC2("r600_irq_set: vblank 1\n");
		mode_int |= D2MODE_VBLANK_INT_MASK;
	}
	if (rdev->irq.hpd[0]) {
		FUNC2("r600_irq_set: hpd 1\n");
		hpd1 |= DC_HPDx_INT_EN;
	}
	if (rdev->irq.hpd[1]) {
		FUNC2("r600_irq_set: hpd 2\n");
		hpd2 |= DC_HPDx_INT_EN;
	}
	if (rdev->irq.hpd[2]) {
		FUNC2("r600_irq_set: hpd 3\n");
		hpd3 |= DC_HPDx_INT_EN;
	}
	if (rdev->irq.hpd[3]) {
		FUNC2("r600_irq_set: hpd 4\n");
		hpd4 |= DC_HPDx_INT_EN;
	}
	if (rdev->irq.hpd[4]) {
		FUNC2("r600_irq_set: hpd 5\n");
		hpd5 |= DC_HPDx_INT_EN;
	}
	if (rdev->irq.hpd[5]) {
		FUNC2("r600_irq_set: hpd 6\n");
		hpd6 |= DC_HPDx_INT_EN;
	}
	if (rdev->irq.afmt[0]) {
		FUNC2("r600_irq_set: hdmi 0\n");
		hdmi0 |= HDMI0_AZ_FORMAT_WTRIG_MASK;
	}
	if (rdev->irq.afmt[1]) {
		FUNC2("r600_irq_set: hdmi 0\n");
		hdmi1 |= HDMI0_AZ_FORMAT_WTRIG_MASK;
	}

	FUNC5(CP_INT_CNTL, cp_int_cntl);
	FUNC5(DMA_CNTL, dma_cntl);
	FUNC5(DxMODE_INT_MASK, mode_int);
	FUNC5(D1GRPH_INTERRUPT_CONTROL, DxGRPH_PFLIP_INT_MASK);
	FUNC5(D2GRPH_INTERRUPT_CONTROL, DxGRPH_PFLIP_INT_MASK);
	FUNC5(GRBM_INT_CNTL, grbm_int_cntl);
	if (FUNC0(rdev)) {
		FUNC5(DC_HPD1_INT_CONTROL, hpd1);
		FUNC5(DC_HPD2_INT_CONTROL, hpd2);
		FUNC5(DC_HPD3_INT_CONTROL, hpd3);
		FUNC5(DC_HPD4_INT_CONTROL, hpd4);
		if (FUNC1(rdev)) {
			FUNC5(DC_HPD5_INT_CONTROL, hpd5);
			FUNC5(DC_HPD6_INT_CONTROL, hpd6);
			FUNC5(AFMT_AUDIO_PACKET_CONTROL + DCE3_HDMI_OFFSET0, hdmi0);
			FUNC5(AFMT_AUDIO_PACKET_CONTROL + DCE3_HDMI_OFFSET1, hdmi1);
		} else {
			FUNC5(HDMI0_AUDIO_PACKET_CONTROL, hdmi0);
			FUNC5(DCE3_HDMI1_AUDIO_PACKET_CONTROL, hdmi1);
		}
	} else {
		FUNC5(DC_HOT_PLUG_DETECT1_INT_CONTROL, hpd1);
		FUNC5(DC_HOT_PLUG_DETECT2_INT_CONTROL, hpd2);
		FUNC5(DC_HOT_PLUG_DETECT3_INT_CONTROL, hpd3);
		FUNC5(HDMI0_AUDIO_PACKET_CONTROL, hdmi0);
		FUNC5(HDMI1_AUDIO_PACKET_CONTROL, hdmi1);
	}
	if ((rdev->family > CHIP_R600) && (rdev->family < CHIP_RV770)) {
		FUNC5(CG_THERMAL_INT, thermal_int);
	} else if (rdev->family >= CHIP_RV770) {
		FUNC5(RV770_CG_THERMAL_INT, thermal_int);
	}

	/* posting read */
	FUNC3(R_000E50_SRBM_STATUS);

	return 0;
}