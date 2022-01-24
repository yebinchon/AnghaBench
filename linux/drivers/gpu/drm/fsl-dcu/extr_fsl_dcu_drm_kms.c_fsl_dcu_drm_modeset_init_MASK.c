#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct fsl_dcu_drm_device {TYPE_2__* drm; int /*<<< orphan*/  crtc; } ;
struct TYPE_6__ {int max_width; int max_height; int /*<<< orphan*/ * funcs; scalar_t__ min_height; scalar_t__ min_width; } ;
struct TYPE_7__ {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (struct fsl_dcu_drm_device*) ; 
 int FUNC5 (struct fsl_dcu_drm_device*) ; 
 int FUNC6 (struct fsl_dcu_drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fsl_dcu_drm_mode_config_funcs ; 

int FUNC7(struct fsl_dcu_drm_device *fsl_dev)
{
	int ret;

	FUNC2(fsl_dev->drm);

	fsl_dev->drm->mode_config.min_width = 0;
	fsl_dev->drm->mode_config.min_height = 0;
	fsl_dev->drm->mode_config.max_width = 2031;
	fsl_dev->drm->mode_config.max_height = 2047;
	fsl_dev->drm->mode_config.funcs = &fsl_dcu_drm_mode_config_funcs;

	ret = FUNC5(fsl_dev);
	if (ret)
		goto err;

	ret = FUNC6(fsl_dev, &fsl_dev->crtc);
	if (ret)
		goto err;

	ret = FUNC4(fsl_dev);
	if (ret)
		goto err;

	FUNC3(fsl_dev->drm);
	FUNC0(fsl_dev->drm);

	return 0;

err:
	FUNC1(fsl_dev->drm);
	return ret;
}