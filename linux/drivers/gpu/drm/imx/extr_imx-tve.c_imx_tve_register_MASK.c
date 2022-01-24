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
struct imx_tve {scalar_t__ mode; int /*<<< orphan*/  encoder; int /*<<< orphan*/  connector; int /*<<< orphan*/  ddc; TYPE_1__* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_VGA ; 
 int DRM_MODE_ENCODER_DAC ; 
 int DRM_MODE_ENCODER_TVDAC ; 
 scalar_t__ TVE_MODE_VGA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx_tve_connector_funcs ; 
 int /*<<< orphan*/  imx_tve_connector_helper_funcs ; 
 int /*<<< orphan*/  imx_tve_encoder_funcs ; 
 int /*<<< orphan*/  imx_tve_encoder_helper_funcs ; 

__attribute__((used)) static int FUNC6(struct drm_device *drm, struct imx_tve *tve)
{
	int encoder_type;
	int ret;

	encoder_type = tve->mode == TVE_MODE_VGA ?
				DRM_MODE_ENCODER_DAC : DRM_MODE_ENCODER_TVDAC;

	ret = FUNC5(drm, &tve->encoder, tve->dev->of_node);
	if (ret)
		return ret;

	FUNC3(&tve->encoder, &imx_tve_encoder_helper_funcs);
	FUNC4(drm, &tve->encoder, &imx_tve_encoder_funcs,
			 encoder_type, NULL);

	FUNC1(&tve->connector,
			&imx_tve_connector_helper_funcs);
	FUNC2(drm, &tve->connector,
				    &imx_tve_connector_funcs,
				    DRM_MODE_CONNECTOR_VGA,
				    tve->ddc);

	FUNC0(&tve->connector, &tve->encoder);

	return 0;
}