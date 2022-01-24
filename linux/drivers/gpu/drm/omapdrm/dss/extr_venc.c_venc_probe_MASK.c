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
struct venc_device {int requires_tv_dac_clk; int /*<<< orphan*/  vdda_dac_reg; int /*<<< orphan*/  base; struct platform_device* pdev; int /*<<< orphan*/ * config; int /*<<< orphan*/  venc_lock; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct venc_device*) ; 
 struct venc_device* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct venc_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  venc_component_ops ; 
 int /*<<< orphan*/  venc_config_pal_trm ; 
 int FUNC14 (struct venc_device*) ; 
 int FUNC15 (struct venc_device*) ; 
 int FUNC16 (struct venc_device*) ; 
 int /*<<< orphan*/  venc_soc_devices ; 
 int /*<<< orphan*/  FUNC17 (struct venc_device*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct venc_device *venc;
	struct resource *venc_mem;
	int r;

	venc = FUNC7(sizeof(*venc), GFP_KERNEL);
	if (!venc)
		return -ENOMEM;

	venc->pdev = pdev;

	FUNC10(pdev, venc);

	/* The OMAP34xx, OMAP35xx and AM35xx VENC require the TV DAC clock. */
	if (FUNC13(venc_soc_devices))
		venc->requires_tv_dac_clk = true;

	FUNC8(&venc->venc_lock);

	venc->config = &venc_config_pal_trm;

	venc_mem = FUNC9(venc->pdev, IORESOURCE_MEM, 0);
	venc->base = FUNC4(&pdev->dev, venc_mem);
	if (FUNC1(venc->base)) {
		r = FUNC2(venc->base);
		goto err_free;
	}

	venc->vdda_dac_reg = FUNC5(&pdev->dev, "vdda");
	if (FUNC1(venc->vdda_dac_reg)) {
		r = FUNC2(venc->vdda_dac_reg);
		if (r != -EPROBE_DEFER)
			FUNC0("can't get VDDA_DAC regulator\n");
		goto err_free;
	}

	r = FUNC14(venc);
	if (r)
		goto err_free;

	r = FUNC16(venc);
	if (r)
		goto err_free;

	FUNC12(&pdev->dev);

	r = FUNC15(venc);
	if (r)
		goto err_pm_disable;

	r = FUNC3(&pdev->dev, &venc_component_ops);
	if (r)
		goto err_uninit_output;

	return 0;

err_uninit_output:
	FUNC17(venc);
err_pm_disable:
	FUNC11(&pdev->dev);
err_free:
	FUNC6(venc);
	return r;
}