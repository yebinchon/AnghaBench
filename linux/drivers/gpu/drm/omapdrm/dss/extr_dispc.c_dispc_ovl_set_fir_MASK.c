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
typedef  int u8 ;
typedef  int u32 ;
struct dispc_device {int dummy; } ;
typedef  enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;
typedef  enum omap_color_component { ____Placeholder_omap_color_component } omap_color_component ;

/* Variables and functions */
 int DISPC_COLOR_COMPONENT_RGB_Y ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FEAT_REG_FIRHINC ; 
 int /*<<< orphan*/  FEAT_REG_FIRVINC ; 
 int FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dispc_device*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct dispc_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct dispc_device *dispc,
			      enum omap_plane_id plane,
			      int hinc, int vinc,
			      enum omap_color_component color_comp)
{
	u32 val;

	if (color_comp == DISPC_COLOR_COMPONENT_RGB_Y) {
		u8 hinc_start, hinc_end, vinc_start, vinc_end;

		FUNC3(dispc, FEAT_REG_FIRHINC,
				    &hinc_start, &hinc_end);
		FUNC3(dispc, FEAT_REG_FIRVINC,
				    &vinc_start, &vinc_end);
		val = FUNC2(vinc, vinc_start, vinc_end) |
				FUNC2(hinc, hinc_start, hinc_end);

		FUNC4(dispc, FUNC0(plane), val);
	} else {
		val = FUNC2(vinc, 28, 16) | FUNC2(hinc, 12, 0);
		FUNC4(dispc, FUNC1(plane), val);
	}
}