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
struct zx_vou_hw {void* axi_clk; void* ppu_clk; struct device* dev; void* otfppu; void* vouctl; void* dtrc; void* timing; void* osd; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  VOU_CHN_AUX ; 
 int /*<<< orphan*/  VOU_CHN_MAIN ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct zx_vou_hw*) ; 
 void* FUNC6 (struct device*,char*) ; 
 void* FUNC7 (struct device*,struct resource*) ; 
 struct zx_vou_hw* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct zx_vou_hw*) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 struct platform_device* FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct zx_vou_hw*) ; 
 int /*<<< orphan*/  vou_irq_handler ; 
 int FUNC14 (struct drm_device*,struct zx_vou_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*,struct zx_vou_hw*) ; 

__attribute__((used)) static int FUNC16(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC12(dev);
	struct drm_device *drm = data;
	struct zx_vou_hw *vou;
	struct resource *res;
	int irq;
	int ret;

	vou = FUNC8(dev, sizeof(*vou), GFP_KERNEL);
	if (!vou)
		return -ENOMEM;

	res = FUNC11(pdev, IORESOURCE_MEM, "osd");
	vou->osd = FUNC7(dev, res);
	if (FUNC1(vou->osd)) {
		ret = FUNC2(vou->osd);
		FUNC0(dev, "failed to remap osd region: %d\n", ret);
		return ret;
	}

	res = FUNC11(pdev, IORESOURCE_MEM, "timing_ctrl");
	vou->timing = FUNC7(dev, res);
	if (FUNC1(vou->timing)) {
		ret = FUNC2(vou->timing);
		FUNC0(dev, "failed to remap timing_ctrl region: %d\n",
			      ret);
		return ret;
	}

	res = FUNC11(pdev, IORESOURCE_MEM, "dtrc");
	vou->dtrc = FUNC7(dev, res);
	if (FUNC1(vou->dtrc)) {
		ret = FUNC2(vou->dtrc);
		FUNC0(dev, "failed to remap dtrc region: %d\n", ret);
		return ret;
	}

	res = FUNC11(pdev, IORESOURCE_MEM, "vou_ctrl");
	vou->vouctl = FUNC7(dev, res);
	if (FUNC1(vou->vouctl)) {
		ret = FUNC2(vou->vouctl);
		FUNC0(dev, "failed to remap vou_ctrl region: %d\n",
			      ret);
		return ret;
	}

	res = FUNC11(pdev, IORESOURCE_MEM, "otfppu");
	vou->otfppu = FUNC7(dev, res);
	if (FUNC1(vou->otfppu)) {
		ret = FUNC2(vou->otfppu);
		FUNC0(dev, "failed to remap otfppu region: %d\n", ret);
		return ret;
	}

	irq = FUNC10(pdev, 0);
	if (irq < 0)
		return irq;

	vou->axi_clk = FUNC6(dev, "aclk");
	if (FUNC1(vou->axi_clk)) {
		ret = FUNC2(vou->axi_clk);
		FUNC0(dev, "failed to get axi_clk: %d\n", ret);
		return ret;
	}

	vou->ppu_clk = FUNC6(dev, "ppu_wclk");
	if (FUNC1(vou->ppu_clk)) {
		ret = FUNC2(vou->ppu_clk);
		FUNC0(dev, "failed to get ppu_clk: %d\n", ret);
		return ret;
	}

	ret = FUNC4(vou->axi_clk);
	if (ret) {
		FUNC0(dev, "failed to enable axi_clk: %d\n", ret);
		return ret;
	}

	FUNC4(vou->ppu_clk);
	if (ret) {
		FUNC0(dev, "failed to enable ppu_clk: %d\n", ret);
		goto disable_axi_clk;
	}

	vou->dev = dev;
	FUNC5(dev, vou);

	FUNC13(vou);

	ret = FUNC9(dev, irq, vou_irq_handler, 0, "zx_vou", vou);
	if (ret < 0) {
		FUNC0(dev, "failed to request vou irq: %d\n", ret);
		goto disable_ppu_clk;
	}

	ret = FUNC14(drm, vou, VOU_CHN_MAIN);
	if (ret) {
		FUNC0(dev, "failed to init main channel crtc: %d\n",
			      ret);
		goto disable_ppu_clk;
	}

	ret = FUNC14(drm, vou, VOU_CHN_AUX);
	if (ret) {
		FUNC0(dev, "failed to init aux channel crtc: %d\n",
			      ret);
		goto disable_ppu_clk;
	}

	FUNC15(drm, vou);

	return 0;

disable_ppu_clk:
	FUNC3(vou->ppu_clk);
disable_axi_clk:
	FUNC3(vou->axi_clk);
	return ret;
}