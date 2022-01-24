#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct hdlcd_drm_private {int /*<<< orphan*/  crtc; int /*<<< orphan*/ * mmio; int /*<<< orphan*/  dma_end_count; int /*<<< orphan*/  vsync_count; int /*<<< orphan*/  bus_error_count; int /*<<< orphan*/  buffer_underrun_count; int /*<<< orphan*/ * clk; } ;
struct drm_device {int /*<<< orphan*/  dev; struct hdlcd_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int HDLCD_PRODUCT_ID ; 
 int HDLCD_PRODUCT_MASK ; 
 int /*<<< orphan*/  HDLCD_REG_VERSION ; 
 int HDLCD_VERSION_MAJOR_MASK ; 
 int HDLCD_VERSION_MINOR_MASK ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct hdlcd_drm_private*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct drm_device*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct drm_device *drm, unsigned long flags)
{
	struct hdlcd_drm_private *hdlcd = drm->dev_private;
	struct platform_device *pdev = FUNC17(drm->dev);
	struct resource *res;
	u32 version;
	int ret;

	hdlcd->clk = FUNC6(drm->dev, "pxlclk");
	if (FUNC3(hdlcd->clk))
		return FUNC4(hdlcd->clk);

#ifdef CONFIG_DEBUG_FS
	atomic_set(&hdlcd->buffer_underrun_count, 0);
	atomic_set(&hdlcd->bus_error_count, 0);
	atomic_set(&hdlcd->vsync_count, 0);
	atomic_set(&hdlcd->dma_end_count, 0);
#endif

	res = FUNC16(pdev, IORESOURCE_MEM, 0);
	hdlcd->mmio = FUNC7(drm->dev, res);
	if (FUNC3(hdlcd->mmio)) {
		FUNC1("failed to map control registers area\n");
		ret = FUNC4(hdlcd->mmio);
		hdlcd->mmio = NULL;
		return ret;
	}

	version = FUNC11(hdlcd, HDLCD_REG_VERSION);
	if ((version & HDLCD_PRODUCT_MASK) != HDLCD_PRODUCT_ID) {
		FUNC1("unknown product id: 0x%x\n", version);
		return -EINVAL;
	}
	FUNC2("found ARM HDLCD version r%dp%d\n",
		(version & HDLCD_VERSION_MAJOR_MASK) >> 8,
		version & HDLCD_VERSION_MINOR_MASK);

	/* Get the optional framebuffer memory resource */
	ret = FUNC13(drm->dev);
	if (ret && ret != -ENODEV)
		return ret;

	ret = FUNC8(drm->dev, FUNC0(32));
	if (ret)
		goto setup_fail;

	ret = FUNC12(drm);
	if (ret < 0) {
		FUNC1("failed to create crtc\n");
		goto setup_fail;
	}

	ret = FUNC10(drm, FUNC15(pdev, 0));
	if (ret < 0) {
		FUNC1("failed to install IRQ handler\n");
		goto irq_fail;
	}

	return 0;

irq_fail:
	FUNC9(&hdlcd->crtc);
setup_fail:
	FUNC14(drm->dev);

	return ret;
}