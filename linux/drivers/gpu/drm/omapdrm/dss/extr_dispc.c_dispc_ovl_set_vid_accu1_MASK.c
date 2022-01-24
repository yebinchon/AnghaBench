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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct dispc_device {int dummy; } ;
typedef  enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FEAT_REG_HORIZONTALACCU ; 
 int /*<<< orphan*/  FEAT_REG_VERTICALACCU ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dispc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dispc_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct dispc_device *dispc,
				    enum omap_plane_id plane, int haccu,
				    int vaccu)
{
	u32 val;
	u8 hor_start, hor_end, vert_start, vert_end;

	FUNC2(dispc, FEAT_REG_HORIZONTALACCU,
			    &hor_start, &hor_end);
	FUNC2(dispc, FEAT_REG_VERTICALACCU,
			    &vert_start, &vert_end);

	val = FUNC1(vaccu, vert_start, vert_end) |
			FUNC1(haccu, hor_start, hor_end);

	FUNC3(dispc, FUNC0(plane), val);
}