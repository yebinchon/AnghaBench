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
struct dispc_device {int dummy; } ;
typedef  enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;
typedef  enum omap_dss_rotation_type { ____Placeholder_omap_dss_rotation_type } omap_dss_rotation_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FEAT_BURST_2D ; 
 int OMAP_DSS_ROT_TILER ; 
 int /*<<< orphan*/  FUNC1 (struct dispc_device*,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC2 (struct dispc_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dispc_device *dispc,
					   enum omap_plane_id plane,
					   enum omap_dss_rotation_type rotation)
{
	if (FUNC2(dispc, FEAT_BURST_2D) == 0)
		return;

	if (rotation == OMAP_DSS_ROT_TILER)
		FUNC1(dispc, FUNC0(plane), 1, 29, 29);
	else
		FUNC1(dispc, FUNC0(plane), 0, 29, 29);
}