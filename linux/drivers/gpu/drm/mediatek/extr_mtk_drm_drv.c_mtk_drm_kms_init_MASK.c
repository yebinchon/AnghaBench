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
struct device {int /*<<< orphan*/ * dma_parms; } ;
struct platform_device {struct device dev; } ;
struct mtk_drm_private {int dma_parms_allocated; struct device* dma_dev; TYPE_2__* data; struct device_node** comp_node; struct device* mutex_dev; struct device_node* mutex_node; } ;
struct TYPE_3__ {int min_width; int min_height; int max_width; int max_height; int /*<<< orphan*/ * funcs; } ;
struct drm_device {int irq_enabled; struct device* dev; TYPE_1__ mode_config; struct mtk_drm_private* dev_private; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {size_t* main_path; size_t* ext_path; size_t* third_path; int /*<<< orphan*/  third_len; int /*<<< orphan*/  ext_len; int /*<<< orphan*/  main_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_CRTC ; 
 int FUNC1 (struct device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int FUNC10 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct drm_device*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtk_drm_mode_config_funcs ; 
 struct platform_device* FUNC13 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*) ; 
 int /*<<< orphan*/  platform_bus_type ; 

__attribute__((used)) static int FUNC15(struct drm_device *drm)
{
	struct mtk_drm_private *private = drm->dev_private;
	struct platform_device *pdev;
	struct device_node *np;
	struct device *dma_dev;
	int ret;

	if (!FUNC11(&platform_bus_type))
		return -EPROBE_DEFER;

	pdev = FUNC13(private->mutex_node);
	if (!pdev) {
		FUNC3(drm->dev, "Waiting for disp-mutex device %pOF\n",
			private->mutex_node);
		FUNC14(private->mutex_node);
		return -EPROBE_DEFER;
	}
	private->mutex_dev = &pdev->dev;

	FUNC8(drm);

	drm->mode_config.min_width = 64;
	drm->mode_config.min_height = 64;

	/*
	 * set max width and height as default value(4096x4096).
	 * this value would be used to check framebuffer size limitation
	 * at drm_mode_addfb().
	 */
	drm->mode_config.max_width = 4096;
	drm->mode_config.max_height = 4096;
	drm->mode_config.funcs = &mtk_drm_mode_config_funcs;

	ret = FUNC1(drm->dev, drm);
	if (ret)
		goto err_config_cleanup;

	/*
	 * We currently support two fixed data streams, each optional,
	 * and each statically assigned to a crtc:
	 * OVL0 -> COLOR0 -> AAL -> OD -> RDMA0 -> UFOE -> DSI0 ...
	 */
	ret = FUNC12(drm, private->data->main_path,
				  private->data->main_len);
	if (ret < 0)
		goto err_component_unbind;
	/* ... and OVL1 -> COLOR1 -> GAMMA -> RDMA1 -> DPI0. */
	ret = FUNC12(drm, private->data->ext_path,
				  private->data->ext_len);
	if (ret < 0)
		goto err_component_unbind;

	ret = FUNC12(drm, private->data->third_path,
				  private->data->third_len);
	if (ret < 0)
		goto err_component_unbind;

	/* Use OVL device for all DMA memory allocations */
	np = private->comp_node[private->data->main_path[0]] ?:
	     private->comp_node[private->data->ext_path[0]];
	pdev = FUNC13(np);
	if (!pdev) {
		ret = -ENODEV;
		FUNC3(drm->dev, "Need at least one OVL device\n");
		goto err_component_unbind;
	}

	dma_dev = &pdev->dev;
	private->dma_dev = dma_dev;

	/*
	 * Configure the DMA segment size to make sure we get contiguous IOVA
	 * when importing PRIME buffers.
	 */
	if (!dma_dev->dma_parms) {
		private->dma_parms_allocated = true;
		dma_dev->dma_parms =
			FUNC4(drm->dev, sizeof(*dma_dev->dma_parms),
				     GFP_KERNEL);
	}
	if (!dma_dev->dma_parms) {
		ret = -ENOMEM;
		goto err_component_unbind;
	}

	ret = FUNC5(dma_dev, (unsigned int)FUNC0(32));
	if (ret) {
		FUNC3(dma_dev, "Failed to set DMA segment size\n");
		goto err_unset_dma_parms;
	}

	/*
	 * We don't use the drm_irq_install() helpers provided by the DRM
	 * core, so we need to set this manually in order to allow the
	 * DRM_IOCTL_WAIT_VBLANK to operate correctly.
	 */
	drm->irq_enabled = true;
	ret = FUNC10(drm, MAX_CRTC);
	if (ret < 0)
		goto err_unset_dma_parms;

	FUNC6(drm);
	FUNC9(drm);

	return 0;

err_unset_dma_parms:
	if (private->dma_parms_allocated)
		dma_dev->dma_parms = NULL;
err_component_unbind:
	FUNC2(drm->dev, drm);
err_config_cleanup:
	FUNC7(drm);

	return ret;
}