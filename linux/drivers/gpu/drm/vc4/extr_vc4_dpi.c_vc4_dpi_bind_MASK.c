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
struct TYPE_3__ {int /*<<< orphan*/  base; int /*<<< orphan*/  type; } ;
struct vc4_dpi_encoder {TYPE_1__ base; struct vc4_dpi* dpi; } ;
struct TYPE_4__ {int /*<<< orphan*/  nregs; int /*<<< orphan*/  regs; void* base; } ;
struct vc4_dpi {void* core_clock; int /*<<< orphan*/ * encoder; TYPE_2__ regset; void* pixel_clock; void* regs; struct platform_device* pdev; } ;
struct vc4_dev {struct vc4_dpi* dpi; } ;
struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPI_ID ; 
 scalar_t__ DPI_ID_VALUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_DPI ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  VC4_ENCODER_TYPE_DPI ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,scalar_t__,scalar_t__) ; 
 struct drm_device* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct vc4_dpi*) ; 
 void* FUNC10 (struct device*,char*) ; 
 void* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dpi_regs ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC15 (struct device*) ; 
 struct vc4_dev* FUNC16 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_device*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  vc4_dpi_encoder_funcs ; 
 int /*<<< orphan*/  vc4_dpi_encoder_helper_funcs ; 
 int FUNC18 (struct vc4_dpi*) ; 
 void* FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC15(dev);
	struct drm_device *drm = FUNC8(master);
	struct vc4_dev *vc4 = FUNC16(drm);
	struct vc4_dpi *dpi;
	struct vc4_dpi_encoder *vc4_dpi_encoder;
	int ret;

	dpi = FUNC11(dev, sizeof(*dpi), GFP_KERNEL);
	if (!dpi)
		return -ENOMEM;

	vc4_dpi_encoder = FUNC11(dev, sizeof(*vc4_dpi_encoder),
				       GFP_KERNEL);
	if (!vc4_dpi_encoder)
		return -ENOMEM;
	vc4_dpi_encoder->base.type = VC4_ENCODER_TYPE_DPI;
	vc4_dpi_encoder->dpi = dpi;
	dpi->encoder = &vc4_dpi_encoder->base.base;

	dpi->pdev = pdev;
	dpi->regs = FUNC19(pdev, 0);
	if (FUNC3(dpi->regs))
		return FUNC4(dpi->regs);
	dpi->regset.base = dpi->regs;
	dpi->regset.regs = dpi_regs;
	dpi->regset.nregs = FUNC0(dpi_regs);

	if (FUNC1(DPI_ID) != DPI_ID_VALUE) {
		FUNC7(dev, "Port returned 0x%08x for ID instead of 0x%08x\n",
			FUNC1(DPI_ID), DPI_ID_VALUE);
		return -ENODEV;
	}

	dpi->core_clock = FUNC10(dev, "core");
	if (FUNC3(dpi->core_clock)) {
		ret = FUNC4(dpi->core_clock);
		if (ret != -EPROBE_DEFER)
			FUNC2("Failed to get core clock: %d\n", ret);
		return ret;
	}
	dpi->pixel_clock = FUNC10(dev, "pixel");
	if (FUNC3(dpi->pixel_clock)) {
		ret = FUNC4(dpi->pixel_clock);
		if (ret != -EPROBE_DEFER)
			FUNC2("Failed to get pixel clock: %d\n", ret);
		return ret;
	}

	ret = FUNC6(dpi->core_clock);
	if (ret)
		FUNC2("Failed to turn on core clock: %d\n", ret);

	FUNC14(drm, dpi->encoder, &vc4_dpi_encoder_funcs,
			 DRM_MODE_ENCODER_DPI, NULL);
	FUNC13(dpi->encoder, &vc4_dpi_encoder_helper_funcs);

	ret = FUNC18(dpi);
	if (ret)
		goto err_destroy_encoder;

	FUNC9(dev, dpi);

	vc4->dpi = dpi;

	FUNC17(drm, "dpi_regs", &dpi->regset);

	return 0;

err_destroy_encoder:
	FUNC12(dpi->encoder);
	FUNC5(dpi->core_clock);
	return ret;
}