#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct shmob_drm_device {TYPE_4__* pdata; } ;
struct drm_display_mode {int type; int /*<<< orphan*/  flags; int /*<<< orphan*/  vtotal; int /*<<< orphan*/  vsync_end; int /*<<< orphan*/  vsync_start; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  htotal; int /*<<< orphan*/  hsync_end; int /*<<< orphan*/  hsync_start; int /*<<< orphan*/  hdisplay; int /*<<< orphan*/  clock; } ;
struct TYPE_7__ {int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;
struct drm_connector {TYPE_2__ display_info; TYPE_5__* dev; } ;
struct TYPE_10__ {struct shmob_drm_device* dev_private; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  vtotal; int /*<<< orphan*/  vsync_end; int /*<<< orphan*/  vsync_start; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  htotal; int /*<<< orphan*/  hsync_end; int /*<<< orphan*/  hsync_start; int /*<<< orphan*/  hdisplay; int /*<<< orphan*/  clock; } ;
struct TYPE_8__ {int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; TYPE_1__ mode; } ;
struct TYPE_9__ {TYPE_3__ panel; } ;

/* Variables and functions */
 int DRM_MODE_TYPE_DRIVER ; 
 int DRM_MODE_TYPE_PREFERRED ; 
 struct drm_display_mode* FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_display_mode*) ; 

__attribute__((used)) static int FUNC3(struct drm_connector *connector)
{
	struct shmob_drm_device *sdev = connector->dev->dev_private;
	struct drm_display_mode *mode;

	mode = FUNC0(connector->dev);
	if (mode == NULL)
		return 0;

	mode->type = DRM_MODE_TYPE_PREFERRED | DRM_MODE_TYPE_DRIVER;
	mode->clock = sdev->pdata->panel.mode.clock;
	mode->hdisplay = sdev->pdata->panel.mode.hdisplay;
	mode->hsync_start = sdev->pdata->panel.mode.hsync_start;
	mode->hsync_end = sdev->pdata->panel.mode.hsync_end;
	mode->htotal = sdev->pdata->panel.mode.htotal;
	mode->vdisplay = sdev->pdata->panel.mode.vdisplay;
	mode->vsync_start = sdev->pdata->panel.mode.vsync_start;
	mode->vsync_end = sdev->pdata->panel.mode.vsync_end;
	mode->vtotal = sdev->pdata->panel.mode.vtotal;
	mode->flags = sdev->pdata->panel.mode.flags;

	FUNC2(mode);
	FUNC1(connector, mode);

	connector->display_info.width_mm = sdev->pdata->panel.width_mm;
	connector->display_info.height_mm = sdev->pdata->panel.height_mm;

	return 1;
}