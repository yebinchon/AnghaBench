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
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  max_height; int /*<<< orphan*/  max_width; } ;
struct drm_device {TYPE_3__ mode_config; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct drm_connector {int force; TYPE_2__* funcs; int /*<<< orphan*/  name; TYPE_1__ base; struct drm_device* dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  enum drm_connector_force { ____Placeholder_drm_connector_force } drm_connector_force ;
struct TYPE_5__ {int /*<<< orphan*/  (* fill_modes ) (struct drm_connector*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int DRM_FORCE_OFF ; 
 int DRM_FORCE_ON ; 
 int DRM_FORCE_ON_DIGITAL ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 struct drm_connector* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *device,
			   struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct drm_connector *connector = FUNC5(device);
	struct drm_device *dev = connector->dev;
	enum drm_connector_force old_force;
	int ret;

	ret = FUNC1(&dev->mode_config.mutex);
	if (ret)
		return ret;

	old_force = connector->force;

	if (FUNC4(buf, "detect"))
		connector->force = 0;
	else if (FUNC4(buf, "on"))
		connector->force = DRM_FORCE_ON;
	else if (FUNC4(buf, "on-digital"))
		connector->force = DRM_FORCE_ON_DIGITAL;
	else if (FUNC4(buf, "off"))
		connector->force = DRM_FORCE_OFF;
	else
		ret = -EINVAL;

	if (old_force != connector->force || !connector->force) {
		FUNC0("[CONNECTOR:%d:%s] force updated from %d to %d or reprobing\n",
			      connector->base.id,
			      connector->name,
			      old_force, connector->force);

		connector->funcs->fill_modes(connector,
					     dev->mode_config.max_width,
					     dev->mode_config.max_height);
	}

	FUNC2(&dev->mode_config.mutex);

	return ret ? ret : count;
}