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
struct qxl_device {int dummy; } ;
struct drm_display_mode {unsigned int hdisplay; unsigned int vdisplay; int /*<<< orphan*/  type; } ;
struct drm_device {struct qxl_device* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_TYPE_PREFERRED ; 
 struct drm_display_mode* FUNC0 (struct drm_device*,unsigned int,unsigned int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_display_mode*) ; 
 int FUNC3 (struct qxl_device*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct drm_connector *connector,
			unsigned int width,
			unsigned int height,
			bool preferred)
{
	struct drm_device *dev = connector->dev;
	struct qxl_device *qdev = dev->dev_private;
	struct drm_display_mode *mode = NULL;
	int rc;

	rc = FUNC3(qdev, width, height);
	if (rc != 0)
		return 0;

	mode = FUNC0(dev, width, height, 60, false, false, false);
	if (preferred)
		mode->type |= DRM_MODE_TYPE_PREFERRED;
	mode->hdisplay = width;
	mode->vdisplay = height;
	FUNC2(mode);
	FUNC1(connector, mode);
	return 1;
}