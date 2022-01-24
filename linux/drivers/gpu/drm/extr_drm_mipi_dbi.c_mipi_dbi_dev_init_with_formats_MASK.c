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
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
struct TYPE_9__ {int /*<<< orphan*/  plane; } ;
struct TYPE_6__ {int /*<<< orphan*/  command; } ;
struct TYPE_7__ {int /*<<< orphan*/  max_height; int /*<<< orphan*/  min_height; int /*<<< orphan*/  max_width; int /*<<< orphan*/  min_width; int /*<<< orphan*/ * funcs; } ;
struct drm_device {TYPE_2__ mode_config; int /*<<< orphan*/  dev; } ;
struct mipi_dbi_dev {unsigned int rotation; TYPE_3__ mode; TYPE_4__ pipe; int /*<<< orphan*/  connector; int /*<<< orphan*/  tx_buf; TYPE_1__ dbi; struct drm_device drm; } ;
struct drm_simple_display_pipe_funcs {int dummy; } ;
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
#define  DRM_FORMAT_MOD_INVALID 129 
#define  DRM_FORMAT_MOD_LINEAR 128 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_SPI ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct drm_device*,TYPE_4__*,struct drm_simple_display_pipe_funcs const*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mipi_dbi_connector_funcs ; 
 int /*<<< orphan*/  mipi_dbi_connector_hfuncs ; 
 int /*<<< orphan*/  mipi_dbi_mode_config_funcs ; 
 int FUNC8 (TYPE_3__*,unsigned int) ; 

int FUNC9(struct mipi_dbi_dev *dbidev,
				   const struct drm_simple_display_pipe_funcs *funcs,
				   const uint32_t *formats, unsigned int format_count,
				   const struct drm_display_mode *mode,
				   unsigned int rotation, size_t tx_buf_size)
{
	static const uint64_t modifiers[] = {
		DRM_FORMAT_MOD_LINEAR,
		DRM_FORMAT_MOD_INVALID
	};
	struct drm_device *drm = &dbidev->drm;
	int ret;

	if (!dbidev->dbi.command)
		return -EINVAL;

	dbidev->tx_buf = FUNC2(drm->dev, tx_buf_size, GFP_KERNEL);
	if (!dbidev->tx_buf)
		return -ENOMEM;

	FUNC5(&dbidev->mode, mode);
	ret = FUNC8(&dbidev->mode, rotation);
	if (ret) {
		FUNC1("Illegal rotation value %u\n", rotation);
		return -EINVAL;
	}

	FUNC3(&dbidev->connector, &mipi_dbi_connector_hfuncs);
	ret = FUNC4(drm, &dbidev->connector, &mipi_dbi_connector_funcs,
				 DRM_MODE_CONNECTOR_SPI);
	if (ret)
		return ret;

	ret = FUNC7(drm, &dbidev->pipe, funcs, formats, format_count,
					   modifiers, &dbidev->connector);
	if (ret)
		return ret;

	FUNC6(&dbidev->pipe.plane);

	drm->mode_config.funcs = &mipi_dbi_mode_config_funcs;
	drm->mode_config.min_width = dbidev->mode.hdisplay;
	drm->mode_config.max_width = dbidev->mode.hdisplay;
	drm->mode_config.min_height = dbidev->mode.vdisplay;
	drm->mode_config.max_height = dbidev->mode.vdisplay;
	dbidev->rotation = rotation;

	FUNC0("rotation = %u\n", rotation);

	return 0;
}