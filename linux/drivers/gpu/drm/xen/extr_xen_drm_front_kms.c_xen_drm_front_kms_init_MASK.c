#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xen_drm_front_drm_pipeline {int dummy; } ;
struct xen_drm_front_drm_info {struct xen_drm_front_drm_pipeline* pipeline; TYPE_3__* front_info; struct drm_device* drm_dev; } ;
struct xen_drm_front_cfg_connector {int dummy; } ;
struct TYPE_4__ {int max_width; int max_height; int /*<<< orphan*/ * funcs; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct TYPE_5__ {int num_connectors; struct xen_drm_front_cfg_connector* connectors; } ;
struct TYPE_6__ {TYPE_2__ cfg; } ;

/* Variables and functions */
 int FUNC0 (struct xen_drm_front_drm_info*,int,struct xen_drm_front_cfg_connector*,struct xen_drm_front_drm_pipeline*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  mode_config_funcs ; 

int FUNC5(struct xen_drm_front_drm_info *drm_info)
{
	struct drm_device *dev = drm_info->drm_dev;
	int i, ret;

	FUNC3(dev);

	dev->mode_config.min_width = 0;
	dev->mode_config.min_height = 0;
	dev->mode_config.max_width = 4095;
	dev->mode_config.max_height = 2047;
	dev->mode_config.funcs = &mode_config_funcs;

	for (i = 0; i < drm_info->front_info->cfg.num_connectors; i++) {
		struct xen_drm_front_cfg_connector *cfg =
				&drm_info->front_info->cfg.connectors[i];
		struct xen_drm_front_drm_pipeline *pipeline =
				&drm_info->pipeline[i];

		ret = FUNC0(drm_info, i, cfg, pipeline);
		if (ret) {
			FUNC2(dev);
			return ret;
		}
	}

	FUNC4(dev);
	FUNC1(dev);
	return 0;
}