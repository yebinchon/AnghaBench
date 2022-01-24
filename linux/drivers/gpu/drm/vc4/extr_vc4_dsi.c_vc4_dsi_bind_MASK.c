#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * bridge; } ;
struct TYPE_6__ {TYPE_3__ base; int /*<<< orphan*/  type; } ;
struct vc4_dsi_encoder {TYPE_1__ base; struct vc4_dsi* dsi; } ;
struct TYPE_7__ {void* nregs; void* regs; void* base; } ;
struct vc4_dsi {uintptr_t port; TYPE_2__ regset; TYPE_3__* encoder; void* bridge; void* escape_clock; void* pixel_clock; void* pll_phy_clock; scalar_t__ reg_dma_mem; int /*<<< orphan*/  xfer_completion; int /*<<< orphan*/  reg_paddr; void* reg_dma_chan; int /*<<< orphan*/  reg_dma_paddr; void* regs; } ;
struct vc4_dev {struct vc4_dsi* dsi1; } ;
struct platform_device {int dummy; } ;
struct of_device_id {scalar_t__ data; } ;
struct drm_panel {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DSI ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_DSI ; 
 scalar_t__ DSI1_INTERRUPTS_ALWAYS_ENABLED ; 
 scalar_t__ DSI_ID_VALUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ID ; 
 int /*<<< orphan*/  INT_EN ; 
 int /*<<< orphan*/  INT_STAT ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  VC4_ENCODER_TYPE_DSI1 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (void*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int,...) ; 
 void* FUNC9 (struct device*) ; 
 void* FUNC10 (struct device*,char*) ; 
 void* FUNC11 (struct device*,struct drm_panel*,int /*<<< orphan*/ ) ; 
 struct vc4_dsi_encoder* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct vc4_dsi*) ; 
 int FUNC14 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct vc4_dsi*) ; 
 scalar_t__ FUNC15 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 void* FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (TYPE_3__*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct drm_device*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_panel**,void**) ; 
 void* dsi0_regs ; 
 void* dsi1_regs ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC25 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC26 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct device*) ; 
 struct platform_device* FUNC28 (struct device*) ; 
 struct vc4_dev* FUNC29 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct drm_device*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  vc4_dsi_dt_match ; 
 int /*<<< orphan*/  vc4_dsi_encoder_funcs ; 
 int /*<<< orphan*/  vc4_dsi_encoder_helper_funcs ; 
 int FUNC31 (struct vc4_dsi*) ; 
 int /*<<< orphan*/  vc4_dsi_irq_defer_to_thread_handler ; 
 int /*<<< orphan*/  vc4_dsi_irq_handler ; 
 void* FUNC32 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC33(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC28(dev);
	struct drm_device *drm = FUNC9(master);
	struct vc4_dev *vc4 = FUNC29(drm);
	struct vc4_dsi *dsi = FUNC9(dev);
	struct vc4_dsi_encoder *vc4_dsi_encoder;
	struct drm_panel *panel;
	const struct of_device_id *match;
	dma_cap_mask_t dma_mask;
	int ret;

	match = FUNC25(vc4_dsi_dt_match, dev);
	if (!match)
		return -ENODEV;

	dsi->port = (uintptr_t)match->data;

	vc4_dsi_encoder = FUNC12(dev, sizeof(*vc4_dsi_encoder),
				       GFP_KERNEL);
	if (!vc4_dsi_encoder)
		return -ENOMEM;
	vc4_dsi_encoder->base.type = VC4_ENCODER_TYPE_DSI1;
	vc4_dsi_encoder->dsi = dsi;
	dsi->encoder = &vc4_dsi_encoder->base.base;

	dsi->regs = FUNC32(pdev, 0);
	if (FUNC4(dsi->regs))
		return FUNC5(dsi->regs);

	dsi->regset.base = dsi->regs;
	if (dsi->port == 0) {
		dsi->regset.regs = dsi0_regs;
		dsi->regset.nregs = FUNC0(dsi0_regs);
	} else {
		dsi->regset.regs = dsi1_regs;
		dsi->regset.nregs = FUNC0(dsi1_regs);
	}

	if (FUNC2(ID) != DSI_ID_VALUE) {
		FUNC8(dev, "Port returned 0x%08x for ID instead of 0x%08x\n",
			FUNC2(ID), DSI_ID_VALUE);
		return -ENODEV;
	}

	/* DSI1 has a broken AXI slave that doesn't respond to writes
	 * from the ARM.  It does handle writes from the DMA engine,
	 * so set up a channel for talking to it.
	 */
	if (dsi->port == 1) {
		dsi->reg_dma_mem = FUNC15(dev, 4,
						      &dsi->reg_dma_paddr,
						      GFP_KERNEL);
		if (!dsi->reg_dma_mem) {
			FUNC1("Failed to get DMA memory\n");
			return -ENOMEM;
		}

		FUNC17(dma_mask);
		FUNC16(DMA_MEMCPY, dma_mask);
		dsi->reg_dma_chan = FUNC18(&dma_mask);
		if (FUNC4(dsi->reg_dma_chan)) {
			ret = FUNC5(dsi->reg_dma_chan);
			if (ret != -EPROBE_DEFER)
				FUNC1("Failed to get DMA channel: %d\n",
					  ret);
			return ret;
		}

		/* Get the physical address of the device's registers.  The
		 * struct resource for the regs gives us the bus address
		 * instead.
		 */
		dsi->reg_paddr = FUNC6(FUNC24(dev->of_node,
							     0, NULL, NULL));
	}

	FUNC23(&dsi->xfer_completion);
	/* At startup enable error-reporting interrupts and nothing else. */
	FUNC3(INT_EN, DSI1_INTERRUPTS_ALWAYS_ENABLED);
	/* Clear any existing interrupt state. */
	FUNC3(INT_STAT, FUNC2(INT_STAT));

	if (dsi->reg_dma_mem)
		ret = FUNC14(dev, FUNC26(pdev, 0),
						vc4_dsi_irq_defer_to_thread_handler,
						vc4_dsi_irq_handler,
						IRQF_ONESHOT,
						"vc4 dsi", dsi);
	else
		ret = FUNC13(dev, FUNC26(pdev, 0),
				       vc4_dsi_irq_handler, 0, "vc4 dsi", dsi);
	if (ret) {
		if (ret != -EPROBE_DEFER)
			FUNC8(dev, "Failed to get interrupt: %d\n", ret);
		return ret;
	}

	dsi->escape_clock = FUNC10(dev, "escape");
	if (FUNC4(dsi->escape_clock)) {
		ret = FUNC5(dsi->escape_clock);
		if (ret != -EPROBE_DEFER)
			FUNC8(dev, "Failed to get escape clock: %d\n", ret);
		return ret;
	}

	dsi->pll_phy_clock = FUNC10(dev, "phy");
	if (FUNC4(dsi->pll_phy_clock)) {
		ret = FUNC5(dsi->pll_phy_clock);
		if (ret != -EPROBE_DEFER)
			FUNC8(dev, "Failed to get phy clock: %d\n", ret);
		return ret;
	}

	dsi->pixel_clock = FUNC10(dev, "pixel");
	if (FUNC4(dsi->pixel_clock)) {
		ret = FUNC5(dsi->pixel_clock);
		if (ret != -EPROBE_DEFER)
			FUNC8(dev, "Failed to get pixel clock: %d\n", ret);
		return ret;
	}

	ret = FUNC22(dev->of_node, 0, 0,
					  &panel, &dsi->bridge);
	if (ret) {
		/* If the bridge or panel pointed by dev->of_node is not
		 * enabled, just return 0 here so that we don't prevent the DRM
		 * dev from being registered. Of course that means the DSI
		 * encoder won't be exposed, but that's not a problem since
		 * nothing is connected to it.
		 */
		if (ret == -ENODEV)
			return 0;

		return ret;
	}

	if (panel) {
		dsi->bridge = FUNC11(dev, panel,
							DRM_MODE_CONNECTOR_DSI);
		if (FUNC4(dsi->bridge))
			return FUNC5(dsi->bridge);
	}

	/* The esc clock rate is supposed to always be 100Mhz. */
	ret = FUNC7(dsi->escape_clock, 100 * 1000000);
	if (ret) {
		FUNC8(dev, "Failed to set esc clock: %d\n", ret);
		return ret;
	}

	ret = FUNC31(dsi);
	if (ret)
		return ret;

	if (dsi->port == 1)
		vc4->dsi1 = dsi;

	FUNC21(drm, dsi->encoder, &vc4_dsi_encoder_funcs,
			 DRM_MODE_ENCODER_DSI, NULL);
	FUNC20(dsi->encoder, &vc4_dsi_encoder_helper_funcs);

	ret = FUNC19(dsi->encoder, dsi->bridge, NULL);
	if (ret) {
		FUNC8(dev, "bridge attach failed: %d\n", ret);
		return ret;
	}
	/* Disable the atomic helper calls into the bridge.  We
	 * manually call the bridge pre_enable / enable / etc. calls
	 * from our driver, since we need to sequence them within the
	 * encoder's enable/disable paths.
	 */
	dsi->encoder->bridge = NULL;

	if (dsi->port == 0)
		FUNC30(drm, "dsi0_regs", &dsi->regset);
	else
		FUNC30(drm, "dsi1_regs", &dsi->regset);

	FUNC27(dev);

	return 0;
}