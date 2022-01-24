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
struct hubp {int dummy; } ;
struct dc_plane_dcc_param {int /*<<< orphan*/  independent_64b_blks; int /*<<< orphan*/  enable; } ;
typedef  enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;
typedef  enum dc_rotation_angle { ____Placeholder_dc_rotation_angle } dc_rotation_angle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hubp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hubp*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hubp*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hubp*,int,struct plane_size*,struct dc_plane_dcc_param*) ; 
 int /*<<< orphan*/  FUNC4 (struct hubp*,union dc_tiling_info*,int) ; 

void FUNC5(
	struct hubp *hubp,
	enum surface_pixel_format format,
	union dc_tiling_info *tiling_info,
	struct plane_size *plane_size,
	enum dc_rotation_angle rotation,
	struct dc_plane_dcc_param *dcc,
	bool horizontal_mirror,
	unsigned int compat_level)
{
	FUNC0(hubp, dcc->enable, dcc->independent_64b_blks);
	FUNC4(hubp, tiling_info, format);
	FUNC3(hubp, format, plane_size, dcc);
	FUNC2(hubp, rotation, horizontal_mirror);
	FUNC1(hubp, format);
}