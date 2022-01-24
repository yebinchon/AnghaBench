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
struct TYPE_2__ {int /*<<< orphan*/  nregs; int /*<<< orphan*/  regs; scalar_t__ base; } ;
struct vc4_hvs {TYPE_1__ regset; int /*<<< orphan*/  mitchell_netravali_filter; int /*<<< orphan*/  lbm_mm; int /*<<< orphan*/  dlist_mm; int /*<<< orphan*/  mm_lock; scalar_t__ regs; scalar_t__ dlist; struct platform_device* pdev; } ;
struct vc4_dev {struct vc4_hvs* hvs; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct drm_device {struct vc4_dev* dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HVS_BOOTLOADER_DLIST_END ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  SCALER_DISPCTRL ; 
 int FUNC5 (int) ; 
 int SCALER_DISPCTRL_DMAEIRQ ; 
 int /*<<< orphan*/  SCALER_DISPCTRL_DSP3_MUX ; 
 int SCALER_DISPCTRL_DSP3_MUX_MASK ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int SCALER_DISPCTRL_ENABLE ; 
 int SCALER_DISPCTRL_SCLEIRQ ; 
 int SCALER_DISPCTRL_SLVRDEIRQ ; 
 int SCALER_DISPCTRL_SLVWREIRQ ; 
 int SCALER_DLIST_SIZE ; 
 scalar_t__ SCALER_DLIST_START ; 
 int FUNC9 (int,int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC10 (struct device*) ; 
 struct vc4_hvs* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  hvs_regs ; 
 int /*<<< orphan*/  mitchell_netravali_1_3_1_3_kernel ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_device*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  vc4_hvs_debugfs_underrun ; 
 int /*<<< orphan*/  vc4_hvs_irq_handler ; 
 int FUNC19 (struct vc4_hvs*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC16(dev);
	struct drm_device *drm = FUNC10(master);
	struct vc4_dev *vc4 = drm->dev_private;
	struct vc4_hvs *hvs = NULL;
	int ret;
	u32 dispctrl;

	hvs = FUNC11(&pdev->dev, sizeof(*hvs), GFP_KERNEL);
	if (!hvs)
		return -ENOMEM;

	hvs->pdev = pdev;

	hvs->regs = FUNC20(pdev, 0);
	if (FUNC3(hvs->regs))
		return FUNC4(hvs->regs);

	hvs->regset.base = hvs->regs;
	hvs->regset.regs = hvs_regs;
	hvs->regset.nregs = FUNC0(hvs_regs);

	hvs->dlist = hvs->regs + SCALER_DLIST_START;

	FUNC15(&hvs->mm_lock);

	/* Set up the HVS display list memory manager.  We never
	 * overwrite the setup from the bootloader (just 128b out of
	 * our 16K), since we don't want to scramble the screen when
	 * transitioning from the firmware's boot setup to runtime.
	 */
	FUNC13(&hvs->dlist_mm,
		    HVS_BOOTLOADER_DLIST_END,
		    (SCALER_DLIST_SIZE >> 2) - HVS_BOOTLOADER_DLIST_END);

	/* Set up the HVS LBM memory manager.  We could have some more
	 * complicated data structure that allowed reuse of LBM areas
	 * between planes when they don't overlap on the screen, but
	 * for now we just allocate globally.
	 */
	FUNC13(&hvs->lbm_mm, 0, 96 * 1024);

	/* Upload filter kernels.  We only have the one for now, so we
	 * keep it around for the lifetime of the driver.
	 */
	ret = FUNC19(hvs,
					   &hvs->mitchell_netravali_filter,
					   mitchell_netravali_1_3_1_3_kernel);
	if (ret)
		return ret;

	vc4->hvs = hvs;

	dispctrl = FUNC1(SCALER_DISPCTRL);

	dispctrl |= SCALER_DISPCTRL_ENABLE;
	dispctrl |= FUNC5(0) |
		    FUNC5(1) |
		    FUNC5(2);

	/* Set DSP3 (PV1) to use HVS channel 2, which would otherwise
	 * be unused.
	 */
	dispctrl &= ~SCALER_DISPCTRL_DSP3_MUX_MASK;
	dispctrl &= ~(SCALER_DISPCTRL_DMAEIRQ |
		      SCALER_DISPCTRL_SLVWREIRQ |
		      SCALER_DISPCTRL_SLVRDEIRQ |
		      FUNC6(0) |
		      FUNC6(1) |
		      FUNC6(2) |
		      FUNC7(0) |
		      FUNC7(1) |
		      FUNC7(2) |
		      FUNC8(0) |
		      FUNC8(1) |
		      FUNC8(2) |
		      SCALER_DISPCTRL_SCLEIRQ);
	dispctrl |= FUNC9(2, SCALER_DISPCTRL_DSP3_MUX);

	FUNC2(SCALER_DISPCTRL, dispctrl);

	ret = FUNC12(dev, FUNC14(pdev, 0),
			       vc4_hvs_irq_handler, 0, "vc4 hvs", drm);
	if (ret)
		return ret;

	FUNC18(drm, "hvs_regs", &hvs->regset);
	FUNC17(drm, "hvs_underrun", vc4_hvs_debugfs_underrun,
			     NULL);

	return 0;
}