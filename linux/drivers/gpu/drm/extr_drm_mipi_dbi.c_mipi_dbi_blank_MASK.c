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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct mipi_dbi {int dummy; } ;
struct TYPE_2__ {int min_height; int min_width; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct mipi_dbi_dev {scalar_t__ tx_buf; struct mipi_dbi dbi; struct drm_device drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DCS_SET_COLUMN_ADDRESS ; 
 int /*<<< orphan*/  MIPI_DCS_SET_PAGE_ADDRESS ; 
 int /*<<< orphan*/  MIPI_DCS_WRITE_MEMORY_START ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct mipi_dbi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mipi_dbi*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC5(struct mipi_dbi_dev *dbidev)
{
	struct drm_device *drm = &dbidev->drm;
	u16 height = drm->mode_config.min_height;
	u16 width = drm->mode_config.min_width;
	struct mipi_dbi *dbi = &dbidev->dbi;
	size_t len = width * height * 2;
	int idx;

	if (!FUNC0(drm, &idx))
		return;

	FUNC2(dbidev->tx_buf, 0, len);

	FUNC3(dbi, MIPI_DCS_SET_COLUMN_ADDRESS, 0, 0,
			 (width >> 8) & 0xFF, (width - 1) & 0xFF);
	FUNC3(dbi, MIPI_DCS_SET_PAGE_ADDRESS, 0, 0,
			 (height >> 8) & 0xFF, (height - 1) & 0xFF);
	FUNC4(dbi, MIPI_DCS_WRITE_MEMORY_START,
			     (u8 *)dbidev->tx_buf, len);

	FUNC1(idx);
}