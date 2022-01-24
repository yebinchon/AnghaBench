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
typedef  int /*<<< orphan*/  u32 ;
struct xen_drm_front_drm_pipeline {int index; int /*<<< orphan*/  conn; int /*<<< orphan*/  pipe; int /*<<< orphan*/  pflip_to_worker; int /*<<< orphan*/  width; int /*<<< orphan*/  height; struct xen_drm_front_drm_info* drm_info; } ;
struct xen_drm_front_drm_info {struct drm_device* drm_dev; } ;
struct xen_drm_front_cfg_connector {int /*<<< orphan*/  width; int /*<<< orphan*/  height; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  display_funcs ; 
 int FUNC1 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pflip_to_worker ; 
 int /*<<< orphan*/ * FUNC2 (int*) ; 
 int FUNC3 (struct xen_drm_front_drm_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct xen_drm_front_drm_info *drm_info,
			     int index, struct xen_drm_front_cfg_connector *cfg,
			     struct xen_drm_front_drm_pipeline *pipeline)
{
	struct drm_device *dev = drm_info->drm_dev;
	const u32 *formats;
	int format_count;
	int ret;

	pipeline->drm_info = drm_info;
	pipeline->index = index;
	pipeline->height = cfg->height;
	pipeline->width = cfg->width;

	FUNC0(&pipeline->pflip_to_worker, pflip_to_worker);

	ret = FUNC3(drm_info, &pipeline->conn);
	if (ret)
		return ret;

	formats = FUNC2(&format_count);

	return FUNC1(dev, &pipeline->pipe,
					    &display_funcs, formats,
					    format_count, NULL,
					    &pipeline->conn);
}