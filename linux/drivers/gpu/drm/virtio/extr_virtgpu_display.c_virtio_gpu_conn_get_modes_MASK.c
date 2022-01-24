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
struct TYPE_3__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct virtio_gpu_output {TYPE_2__ info; scalar_t__ edid; } ;
struct drm_display_mode {int /*<<< orphan*/  type; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  DRM_MODE_TYPE_PREFERRED ; 
 int XRES_DEF ; 
 int /*<<< orphan*/  XRES_MAX ; 
 int YRES_DEF ; 
 int /*<<< orphan*/  YRES_MAX ; 
 int FUNC1 (struct drm_connector*,scalar_t__) ; 
 int FUNC2 (struct drm_connector*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct virtio_gpu_output* FUNC3 (struct drm_connector*) ; 
 struct drm_display_mode* FUNC4 (int /*<<< orphan*/ ,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct drm_connector *connector)
{
	struct virtio_gpu_output *output =
		FUNC3(connector);
	struct drm_display_mode *mode = NULL;
	int count, width, height;

	if (output->edid) {
		count = FUNC1(connector, output->edid);
		if (count)
			return count;
	}

	width  = FUNC7(output->info.r.width);
	height = FUNC7(output->info.r.height);
	count = FUNC2(connector, XRES_MAX, YRES_MAX);

	if (width == 0 || height == 0) {
		width = XRES_DEF;
		height = YRES_DEF;
		FUNC6(connector, XRES_DEF, YRES_DEF);
	} else {
		FUNC0("add mode: %dx%d\n", width, height);
		mode = FUNC4(connector->dev, width, height, 60,
				    false, false, false);
		mode->type |= DRM_MODE_TYPE_PREFERRED;
		FUNC5(connector, mode);
		count++;
	}

	return count;
}