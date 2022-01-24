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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int OMAP_DSS_GFX ; 
 int /*<<< orphan*/  FUNC1 (struct dispc_device*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct dispc_device *dispc,
				enum omap_plane_id plane, bool enable)
{
	int bit;

	if (plane == OMAP_DSS_GFX)
		bit = 14;
	else
		bit = 23;

	FUNC1(dispc, FUNC0(plane), enable, bit, bit);
}