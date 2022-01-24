#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ipu_soc {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  port; } ;
struct ipu_crtc {TYPE_1__** plane; int /*<<< orphan*/  irq; TYPE_4__* dev; struct drm_crtc base; } ;
struct ipu_client_platformdata {scalar_t__ dp; int /*<<< orphan*/ * dma; int /*<<< orphan*/  of_node; } ;
struct drm_device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct TYPE_8__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_PLANE_TYPE_OVERLAY ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_PRIMARY ; 
 int EINVAL ; 
 int IPU_DP_FLOW_SYNC_BG ; 
 int IPU_DP_FLOW_SYNC_FG ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,int) ; 
 struct ipu_soc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ipu_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,struct drm_crtc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_crtc*) ; 
 int /*<<< orphan*/  ipu_crtc_funcs ; 
 int FUNC9 (struct ipu_crtc*,struct ipu_client_platformdata*) ; 
 int /*<<< orphan*/  ipu_helper_funcs ; 
 int /*<<< orphan*/  ipu_irq_handler ; 
 int FUNC10 (TYPE_1__*) ; 
 void* FUNC11 (struct drm_device*,struct ipu_soc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (struct ipu_crtc*) ; 

__attribute__((used)) static int FUNC15(struct ipu_crtc *ipu_crtc,
	struct ipu_client_platformdata *pdata, struct drm_device *drm)
{
	struct ipu_soc *ipu = FUNC3(ipu_crtc->dev->parent);
	struct drm_crtc *crtc = &ipu_crtc->base;
	int dp = -EINVAL;
	int ret;

	ret = FUNC9(ipu_crtc, pdata);
	if (ret) {
		FUNC2(ipu_crtc->dev, "getting resources failed with %d.\n",
				ret);
		return ret;
	}

	if (pdata->dp >= 0)
		dp = IPU_DP_FLOW_SYNC_BG;
	ipu_crtc->plane[0] = FUNC11(drm, ipu, pdata->dma[0], dp, 0,
					    DRM_PLANE_TYPE_PRIMARY);
	if (FUNC0(ipu_crtc->plane[0])) {
		ret = FUNC1(ipu_crtc->plane[0]);
		goto err_put_resources;
	}

	crtc->port = pdata->of_node;
	FUNC6(crtc, &ipu_helper_funcs);
	FUNC7(drm, crtc, &ipu_crtc->plane[0]->base, NULL,
				  &ipu_crtc_funcs, NULL);

	ret = FUNC10(ipu_crtc->plane[0]);
	if (ret) {
		FUNC2(ipu_crtc->dev, "getting plane 0 resources failed with %d.\n",
			ret);
		goto err_put_resources;
	}

	/* If this crtc is using the DP, add an overlay plane */
	if (pdata->dp >= 0 && pdata->dma[1] > 0) {
		ipu_crtc->plane[1] = FUNC11(drm, ipu, pdata->dma[1],
						IPU_DP_FLOW_SYNC_FG,
						FUNC8(&ipu_crtc->base),
						DRM_PLANE_TYPE_OVERLAY);
		if (FUNC0(ipu_crtc->plane[1])) {
			ipu_crtc->plane[1] = NULL;
		} else {
			ret = FUNC10(ipu_crtc->plane[1]);
			if (ret) {
				FUNC2(ipu_crtc->dev, "getting plane 1 "
					"resources failed with %d.\n", ret);
				goto err_put_plane0_res;
			}
		}
	}

	ipu_crtc->irq = FUNC12(ipu_crtc->plane[0]);
	ret = FUNC4(ipu_crtc->dev, ipu_crtc->irq, ipu_irq_handler, 0,
			"imx_drm", ipu_crtc);
	if (ret < 0) {
		FUNC2(ipu_crtc->dev, "irq request failed with %d.\n", ret);
		goto err_put_plane1_res;
	}
	/* Only enable IRQ when we actually need it to trigger work. */
	FUNC5(ipu_crtc->irq);

	return 0;

err_put_plane1_res:
	if (ipu_crtc->plane[1])
		FUNC13(ipu_crtc->plane[1]);
err_put_plane0_res:
	FUNC13(ipu_crtc->plane[0]);
err_put_resources:
	FUNC14(ipu_crtc);

	return ret;
}