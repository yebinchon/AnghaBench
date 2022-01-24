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
typedef  union dc_tiling_info {int dummy; } dc_tiling_info ;
struct plane_size {int dummy; } ;
struct mem_input {int dummy; } ;
struct dce_mem_input {int dummy; } ;
struct dc_plane_dcc_param {int dummy; } ;
typedef  enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;
typedef  enum dc_rotation_angle { ____Placeholder_dc_rotation_angle } dc_rotation_angle ;

/* Variables and functions */
 int /*<<< orphan*/  GRPH_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int SURFACE_PIXEL_FORMAT_GRPH_BEGIN ; 
 int SURFACE_PIXEL_FORMAT_VIDEO_BEGIN ; 
 struct dce_mem_input* FUNC1 (struct mem_input*) ; 
 int /*<<< orphan*/  FUNC2 (struct dce_mem_input*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dce_mem_input*,int,struct plane_size*) ; 
 int /*<<< orphan*/  FUNC4 (struct dce_mem_input*,union dc_tiling_info*) ; 

__attribute__((used)) static void FUNC5(
	struct mem_input *mi,
	enum surface_pixel_format format,
	union dc_tiling_info *tiling_info,
	struct plane_size *plane_size,
	enum dc_rotation_angle rotation,
	struct dc_plane_dcc_param *dcc,
	bool horizontal_mirror)
{
	struct dce_mem_input *dce_mi = FUNC1(mi);
	FUNC0(GRPH_ENABLE, GRPH_ENABLE, 1);

	FUNC4(dce_mi, tiling_info);
	FUNC3(dce_mi, rotation, plane_size);

	if (format >= SURFACE_PIXEL_FORMAT_GRPH_BEGIN &&
		format < SURFACE_PIXEL_FORMAT_VIDEO_BEGIN)
		FUNC2(dce_mi, format);
}