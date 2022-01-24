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
struct msm_kms {int dummy; } ;
struct mdp4_kms {int rev; int /*<<< orphan*/  clk; struct drm_device* dev; } ;
struct TYPE_2__ {int allow_fb_modifiers; } ;
struct drm_device {int /*<<< orphan*/  dev; TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  DMA_E ; 
 int /*<<< orphan*/  DMA_P ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int ENXIO ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDP4_VERSION_MAJOR ; 
 int /*<<< orphan*/  MDP4_VERSION_MINOR ; 
 int /*<<< orphan*/  REG_MDP4_CS_CONTROLLER0 ; 
 int /*<<< orphan*/  REG_MDP4_CS_CONTROLLER1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_MDP4_DMA_P_OP_MODE ; 
 int /*<<< orphan*/  REG_MDP4_DMA_S_OP_MODE ; 
 int /*<<< orphan*/  REG_MDP4_LAYERMIXER_IN_CFG ; 
 int /*<<< orphan*/  REG_MDP4_LAYERMIXER_IN_CFG_UPDATE_METHOD ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_MDP4_PORTMAP_MODE ; 
 int /*<<< orphan*/  REG_MDP4_READ_CNFG ; 
 int /*<<< orphan*/  REG_MDP4_RESET_STATUS ; 
 int /*<<< orphan*/  REG_MDP4_VERSION ; 
 int /*<<< orphan*/  RGB1 ; 
 int /*<<< orphan*/  RGB2 ; 
 int /*<<< orphan*/  VG1 ; 
 int /*<<< orphan*/  VG2 ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mdp4_kms*) ; 
 int /*<<< orphan*/  FUNC9 (struct mdp4_kms*) ; 
 int FUNC10 (struct mdp4_kms*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mdp4_kms*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct mdp4_kms* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct msm_kms*) ; 

__attribute__((used)) static int FUNC16(struct msm_kms *kms)
{
	struct mdp4_kms *mdp4_kms = FUNC14(FUNC15(kms));
	struct drm_device *dev = mdp4_kms->dev;
	uint32_t version, major, minor, dmap_cfg, vg_cfg;
	unsigned long clk;
	int ret = 0;

	FUNC12(dev->dev);

	FUNC9(mdp4_kms);
	version = FUNC10(mdp4_kms, REG_MDP4_VERSION);
	FUNC8(mdp4_kms);

	major = FUNC2(version, MDP4_VERSION_MAJOR);
	minor = FUNC2(version, MDP4_VERSION_MINOR);

	FUNC0("found MDP4 version v%d.%d", major, minor);

	if (major != 4) {
		FUNC1(dev->dev, "unexpected MDP version: v%d.%d\n",
				major, minor);
		ret = -ENXIO;
		goto out;
	}

	mdp4_kms->rev = minor;

	if (mdp4_kms->rev > 1) {
		FUNC11(mdp4_kms, REG_MDP4_CS_CONTROLLER0, 0x0707ffff);
		FUNC11(mdp4_kms, REG_MDP4_CS_CONTROLLER1, 0x03073f3f);
	}

	FUNC11(mdp4_kms, REG_MDP4_PORTMAP_MODE, 0x3);

	/* max read pending cmd config, 3 pending requests: */
	FUNC11(mdp4_kms, REG_MDP4_READ_CNFG, 0x02222);

	clk = FUNC7(mdp4_kms->clk);

	if ((mdp4_kms->rev >= 1) || (clk >= 90000000)) {
		dmap_cfg = 0x47;     /* 16 bytes-burst x 8 req */
		vg_cfg = 0x47;       /* 16 bytes-burs x 8 req */
	} else {
		dmap_cfg = 0x27;     /* 8 bytes-burst x 8 req */
		vg_cfg = 0x43;       /* 16 bytes-burst x 4 req */
	}

	FUNC0("fetch config: dmap=%02x, vg=%02x", dmap_cfg, vg_cfg);

	FUNC11(mdp4_kms, FUNC3(DMA_P), dmap_cfg);
	FUNC11(mdp4_kms, FUNC3(DMA_E), dmap_cfg);

	FUNC11(mdp4_kms, FUNC5(VG1), vg_cfg);
	FUNC11(mdp4_kms, FUNC5(VG2), vg_cfg);
	FUNC11(mdp4_kms, FUNC5(RGB1), vg_cfg);
	FUNC11(mdp4_kms, FUNC5(RGB2), vg_cfg);

	if (mdp4_kms->rev >= 2)
		FUNC11(mdp4_kms, REG_MDP4_LAYERMIXER_IN_CFG_UPDATE_METHOD, 1);
	FUNC11(mdp4_kms, REG_MDP4_LAYERMIXER_IN_CFG, 0);

	/* disable CSC matrix / YUV by default: */
	FUNC11(mdp4_kms, FUNC6(VG1), 0);
	FUNC11(mdp4_kms, FUNC6(VG2), 0);
	FUNC11(mdp4_kms, REG_MDP4_DMA_P_OP_MODE, 0);
	FUNC11(mdp4_kms, REG_MDP4_DMA_S_OP_MODE, 0);
	FUNC11(mdp4_kms, FUNC4(1), 0);
	FUNC11(mdp4_kms, FUNC4(2), 0);

	if (mdp4_kms->rev > 1)
		FUNC11(mdp4_kms, REG_MDP4_RESET_STATUS, 1);

	dev->mode_config.allow_fb_modifiers = true;

out:
	FUNC13(dev->dev);

	return ret;
}