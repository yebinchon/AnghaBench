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
struct mdp4_kms {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int bpc; } ;
struct drm_connector {TYPE_1__ display_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int MDP4_LCDC_LVDS_INTF_CTL_CH1_CLK_LANE_EN ; 
 int MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE0_EN ; 
 int MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE1_EN ; 
 int MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE2_EN ; 
 int MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE3_EN ; 
 int MDP4_LCDC_LVDS_INTF_CTL_CH2_CLK_LANE_EN ; 
 int MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE0_EN ; 
 int MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE1_EN ; 
 int MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE2_EN ; 
 int MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE3_EN ; 
 int MDP4_LCDC_LVDS_INTF_CTL_CH_SWAP ; 
 int MDP4_LCDC_LVDS_INTF_CTL_ENABLE ; 
 int MDP4_LCDC_LVDS_INTF_CTL_MODE_SEL ; 
 int MDP4_LCDC_LVDS_INTF_CTL_RGB_OUT ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int MDP4_LVDS_PHY_CFG0_CHANNEL0 ; 
 int MDP4_LVDS_PHY_CFG0_CHANNEL1 ; 
 int MDP4_LVDS_PHY_CFG0_SERIALIZATION_ENBLE ; 
 int /*<<< orphan*/  REG_MDP4_LCDC_LVDS_INTF_CTL ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  REG_MDP4_LVDS_PHY_CFG0 ; 
 int /*<<< orphan*/  REG_MDP4_LVDS_PHY_CFG2 ; 
 struct drm_connector* FUNC10 (struct drm_encoder*) ; 
 struct mdp4_kms* FUNC11 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct mdp4_kms*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;
	struct drm_connector *connector = FUNC10(encoder);
	struct mdp4_kms *mdp4_kms = FUNC11(encoder);
	uint32_t lvds_intf = 0, lvds_phy_cfg0 = 0;
	int bpp, nchan, swap;

	if (!connector)
		return;

	bpp = 3 * connector->display_info.bpc;

	if (!bpp)
		bpp = 18;

	/* TODO, these should come from panel somehow: */
	nchan = 1;
	swap = 0;

	switch (bpp) {
	case 24:
		FUNC13(mdp4_kms, FUNC8(0),
				FUNC1(0x08) |
				FUNC2(0x05) |
				FUNC3(0x04) |
				FUNC4(0x03));
		FUNC13(mdp4_kms, FUNC9(0),
				FUNC5(0x02) |
				FUNC6(0x01) |
				FUNC7(0x00));
		FUNC13(mdp4_kms, FUNC8(1),
				FUNC1(0x11) |
				FUNC2(0x10) |
				FUNC3(0x0d) |
				FUNC4(0x0c));
		FUNC13(mdp4_kms, FUNC9(1),
				FUNC5(0x0b) |
				FUNC6(0x0a) |
				FUNC7(0x09));
		FUNC13(mdp4_kms, FUNC8(2),
				FUNC1(0x1a) |
				FUNC2(0x19) |
				FUNC3(0x18) |
				FUNC4(0x15));
		FUNC13(mdp4_kms, FUNC9(2),
				FUNC5(0x14) |
				FUNC6(0x13) |
				FUNC7(0x12));
		FUNC13(mdp4_kms, FUNC8(3),
				FUNC1(0x1b) |
				FUNC2(0x17) |
				FUNC3(0x16) |
				FUNC4(0x0f));
		FUNC13(mdp4_kms, FUNC9(3),
				FUNC5(0x0e) |
				FUNC6(0x07) |
				FUNC7(0x06));
		if (nchan == 2) {
			lvds_intf |= MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE3_EN |
					MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE2_EN |
					MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE1_EN |
					MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE0_EN |
					MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE3_EN |
					MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE2_EN |
					MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE1_EN |
					MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE0_EN;
		} else {
			lvds_intf |= MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE3_EN |
					MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE2_EN |
					MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE1_EN |
					MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE0_EN;
		}
		break;

	case 18:
		FUNC13(mdp4_kms, FUNC8(0),
				FUNC1(0x0a) |
				FUNC2(0x07) |
				FUNC3(0x06) |
				FUNC4(0x05));
		FUNC13(mdp4_kms, FUNC9(0),
				FUNC5(0x04) |
				FUNC6(0x03) |
				FUNC7(0x02));
		FUNC13(mdp4_kms, FUNC8(1),
				FUNC1(0x13) |
				FUNC2(0x12) |
				FUNC3(0x0f) |
				FUNC4(0x0e));
		FUNC13(mdp4_kms, FUNC9(1),
				FUNC5(0x0d) |
				FUNC6(0x0c) |
				FUNC7(0x0b));
		FUNC13(mdp4_kms, FUNC8(2),
				FUNC1(0x1a) |
				FUNC2(0x19) |
				FUNC3(0x18) |
				FUNC4(0x17));
		FUNC13(mdp4_kms, FUNC9(2),
				FUNC5(0x16) |
				FUNC6(0x15) |
				FUNC7(0x14));
		if (nchan == 2) {
			lvds_intf |= MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE2_EN |
					MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE1_EN |
					MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE0_EN |
					MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE2_EN |
					MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE1_EN |
					MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE0_EN;
		} else {
			lvds_intf |= MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE2_EN |
					MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE1_EN |
					MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE0_EN;
		}
		lvds_intf |= MDP4_LCDC_LVDS_INTF_CTL_RGB_OUT;
		break;

	default:
		FUNC0(dev->dev, "unknown bpp: %d\n", bpp);
		return;
	}

	switch (nchan) {
	case 1:
		lvds_phy_cfg0 = MDP4_LVDS_PHY_CFG0_CHANNEL0;
		lvds_intf |= MDP4_LCDC_LVDS_INTF_CTL_CH1_CLK_LANE_EN |
				MDP4_LCDC_LVDS_INTF_CTL_MODE_SEL;
		break;
	case 2:
		lvds_phy_cfg0 = MDP4_LVDS_PHY_CFG0_CHANNEL0 |
				MDP4_LVDS_PHY_CFG0_CHANNEL1;
		lvds_intf |= MDP4_LCDC_LVDS_INTF_CTL_CH2_CLK_LANE_EN |
				MDP4_LCDC_LVDS_INTF_CTL_CH1_CLK_LANE_EN;
		break;
	default:
		FUNC0(dev->dev, "unknown # of channels: %d\n", nchan);
		return;
	}

	if (swap)
		lvds_intf |= MDP4_LCDC_LVDS_INTF_CTL_CH_SWAP;

	lvds_intf |= MDP4_LCDC_LVDS_INTF_CTL_ENABLE;

	FUNC13(mdp4_kms, REG_MDP4_LVDS_PHY_CFG0, lvds_phy_cfg0);
	FUNC13(mdp4_kms, REG_MDP4_LCDC_LVDS_INTF_CTL, lvds_intf);
	FUNC13(mdp4_kms, REG_MDP4_LVDS_PHY_CFG2, 0x30);

	FUNC12();
	FUNC14(1);
	lvds_phy_cfg0 |= MDP4_LVDS_PHY_CFG0_SERIALIZATION_ENBLE;
	FUNC13(mdp4_kms, REG_MDP4_LVDS_PHY_CFG0, lvds_phy_cfg0);
}