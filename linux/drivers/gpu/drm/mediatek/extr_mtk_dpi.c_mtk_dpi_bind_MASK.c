#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  possible_crtcs; } ;
struct mtk_dpi {int /*<<< orphan*/  ddp_comp; TYPE_1__ encoder; int /*<<< orphan*/  color_format; int /*<<< orphan*/  yc_map; int /*<<< orphan*/  channel_swap; int /*<<< orphan*/  bit_num; int /*<<< orphan*/  bridge; } ;
struct drm_device {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int /*<<< orphan*/  MTK_DPI_COLOR_FORMAT_RGB ; 
 int /*<<< orphan*/  MTK_DPI_OUT_BIT_NUM_8BITS ; 
 int /*<<< orphan*/  MTK_DPI_OUT_CHANNEL_SWAP_RGB ; 
 int /*<<< orphan*/  MTK_DPI_OUT_YC_MAP_RGB ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 struct mtk_dpi* FUNC2 (struct device*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct drm_device*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtk_dpi_encoder_funcs ; 
 int /*<<< orphan*/  mtk_dpi_encoder_helper_funcs ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct device *master, void *data)
{
	struct mtk_dpi *dpi = FUNC2(dev);
	struct drm_device *drm_dev = data;
	int ret;

	ret = FUNC7(drm_dev, &dpi->ddp_comp);
	if (ret < 0) {
		FUNC1(dev, "Failed to register component %pOF: %d\n",
			dev->of_node, ret);
		return ret;
	}

	ret = FUNC6(drm_dev, &dpi->encoder, &mtk_dpi_encoder_funcs,
			       DRM_MODE_ENCODER_TMDS, NULL);
	if (ret) {
		FUNC1(dev, "Failed to initialize decoder: %d\n", ret);
		goto err_unregister;
	}
	FUNC5(&dpi->encoder, &mtk_dpi_encoder_helper_funcs);

	/* Currently DPI0 is fixed to be driven by OVL1 */
	dpi->encoder.possible_crtcs = FUNC0(1);

	ret = FUNC3(&dpi->encoder, dpi->bridge, NULL);
	if (ret) {
		FUNC1(dev, "Failed to attach bridge: %d\n", ret);
		goto err_cleanup;
	}

	dpi->bit_num = MTK_DPI_OUT_BIT_NUM_8BITS;
	dpi->channel_swap = MTK_DPI_OUT_CHANNEL_SWAP_RGB;
	dpi->yc_map = MTK_DPI_OUT_YC_MAP_RGB;
	dpi->color_format = MTK_DPI_COLOR_FORMAT_RGB;

	return 0;

err_cleanup:
	FUNC4(&dpi->encoder);
err_unregister:
	FUNC8(drm_dev, &dpi->ddp_comp);
	return ret;
}