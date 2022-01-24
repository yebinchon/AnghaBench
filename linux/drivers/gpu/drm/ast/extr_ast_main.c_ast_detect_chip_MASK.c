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
typedef  int uint32_t ;
struct drm_device {TYPE_1__* pdev; struct ast_private* dev_private; } ;
struct ast_private {int chip; int vga2_clone; int support_wide_screen; int tx_chip_type; int /*<<< orphan*/ * dp501_fw_addr; } ;
struct TYPE_2__ {scalar_t__ device; int revision; } ;

/* Variables and functions */
 void* AST1100 ; 
#define  AST1180 131 
#define  AST2000 130 
 int AST2100 ; 
 int AST2150 ; 
 int AST2200 ; 
 int AST2300 ; 
 int AST2400 ; 
 int AST2500 ; 
 int /*<<< orphan*/  AST_IO_CRTC_PORT ; 
#define  AST_TX_DP501 129 
 int AST_TX_NONE ; 
#define  AST_TX_SIL164 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PCI_CHIP_AST1180 ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct ast_private*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ast_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct drm_device *dev, bool *need_post)
{
	struct ast_private *ast = dev->dev_private;
	uint32_t jreg, scu_rev;

	/*
	 * If VGA isn't enabled, we need to enable now or subsequent
	 * access to the scratch registers will fail. We also inform
	 * our caller that it needs to POST the chip
	 * (Assumption: VGA not enabled -> need to POST)
	 */
	if (!FUNC6(dev)) {
		FUNC4(dev);
		FUNC0("VGA not enabled on entry, requesting chip POST\n");
		*need_post = true;
	} else
		*need_post = false;


	/* Enable extended register access */
	FUNC7(ast);
	FUNC3(dev);

	/* Find out whether P2A works or whether to use device-tree */
	FUNC2(dev, &scu_rev);

	/* Identify chipset */
	if (dev->pdev->device == PCI_CHIP_AST1180) {
		ast->chip = AST1100;
		FUNC0("AST 1180 detected\n");
	} else {
		if (dev->pdev->revision >= 0x40) {
			ast->chip = AST2500;
			FUNC0("AST 2500 detected\n");
		} else if (dev->pdev->revision >= 0x30) {
			ast->chip = AST2400;
			FUNC0("AST 2400 detected\n");
		} else if (dev->pdev->revision >= 0x20) {
			ast->chip = AST2300;
			FUNC0("AST 2300 detected\n");
		} else if (dev->pdev->revision >= 0x10) {
			switch (scu_rev & 0x0300) {
			case 0x0200:
				ast->chip = AST1100;
				FUNC0("AST 1100 detected\n");
				break;
			case 0x0100:
				ast->chip = AST2200;
				FUNC0("AST 2200 detected\n");
				break;
			case 0x0000:
				ast->chip = AST2150;
				FUNC0("AST 2150 detected\n");
				break;
			default:
				ast->chip = AST2100;
				FUNC0("AST 2100 detected\n");
				break;
			}
			ast->vga2_clone = false;
		} else {
			ast->chip = AST2000;
			FUNC0("AST 2000 detected\n");
		}
	}

	/* Check if we support wide screen */
	switch (ast->chip) {
	case AST1180:
		ast->support_wide_screen = true;
		break;
	case AST2000:
		ast->support_wide_screen = false;
		break;
	default:
		jreg = FUNC5(ast, AST_IO_CRTC_PORT, 0xd0, 0xff);
		if (!(jreg & 0x80))
			ast->support_wide_screen = true;
		else if (jreg & 0x01)
			ast->support_wide_screen = true;
		else {
			ast->support_wide_screen = false;
			if (ast->chip == AST2300 &&
			    (scu_rev & 0x300) == 0x0) /* ast1300 */
				ast->support_wide_screen = true;
			if (ast->chip == AST2400 &&
			    (scu_rev & 0x300) == 0x100) /* ast1400 */
				ast->support_wide_screen = true;
			if (ast->chip == AST2500 &&
			    scu_rev == 0x100)           /* ast2510 */
				ast->support_wide_screen = true;
		}
		break;
	}

	/* Check 3rd Tx option (digital output afaik) */
	ast->tx_chip_type = AST_TX_NONE;

	/*
	 * VGACRA3 Enhanced Color Mode Register, check if DVO is already
	 * enabled, in that case, assume we have a SIL164 TMDS transmitter
	 *
	 * Don't make that assumption if we the chip wasn't enabled and
	 * is at power-on reset, otherwise we'll incorrectly "detect" a
	 * SIL164 when there is none.
	 */
	if (!*need_post) {
		jreg = FUNC5(ast, AST_IO_CRTC_PORT, 0xa3, 0xff);
		if (jreg & 0x80)
			ast->tx_chip_type = AST_TX_SIL164;
	}

	if ((ast->chip == AST2300) || (ast->chip == AST2400)) {
		/*
		 * On AST2300 and 2400, look the configuration set by the SoC in
		 * the SOC scratch register #1 bits 11:8 (interestingly marked
		 * as "reserved" in the spec)
		 */
		jreg = FUNC5(ast, AST_IO_CRTC_PORT, 0xd1, 0xff);
		switch (jreg) {
		case 0x04:
			ast->tx_chip_type = AST_TX_SIL164;
			break;
		case 0x08:
			ast->dp501_fw_addr = FUNC9(32*1024, GFP_KERNEL);
			if (ast->dp501_fw_addr) {
				/* backup firmware */
				if (FUNC1(dev, ast->dp501_fw_addr, 32*1024)) {
					FUNC8(ast->dp501_fw_addr);
					ast->dp501_fw_addr = NULL;
				}
			}
			/* fallthrough */
		case 0x0c:
			ast->tx_chip_type = AST_TX_DP501;
		}
	}

	/* Print stuff for diagnostic purposes */
	switch(ast->tx_chip_type) {
	case AST_TX_SIL164:
		FUNC0("Using Sil164 TMDS transmitter\n");
		break;
	case AST_TX_DP501:
		FUNC0("Using DP501 DisplayPort transmitter\n");
		break;
	default:
		FUNC0("Analog VGA only\n");
	}
	return 0;
}