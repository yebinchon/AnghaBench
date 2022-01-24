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
struct drm_connector {int status; struct drm_device* dev; } ;
struct omap_connector {struct drm_connector base; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,int) ; 

__attribute__((used)) static void FUNC4(void *cb_data,
				  enum drm_connector_status status)
{
	struct omap_connector *omap_connector = cb_data;
	struct drm_connector *connector = &omap_connector->base;
	struct drm_device *dev = connector->dev;
	enum drm_connector_status old_status;

	FUNC1(&dev->mode_config.mutex);
	old_status = connector->status;
	connector->status = status;
	FUNC2(&dev->mode_config.mutex);

	if (old_status == status)
		return;

	FUNC3(connector, status);

	FUNC0(dev);
}