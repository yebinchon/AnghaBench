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
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int OMAP_DSS_WB ; 
 unsigned long FUNC0 (struct dispc_device*,int) ; 
 int FUNC1 (struct dispc_device*,int) ; 

__attribute__((used)) static unsigned long FUNC2(struct dispc_device *dispc,
					   enum omap_plane_id plane)
{
	enum omap_channel channel;

	if (plane == OMAP_DSS_WB)
		return 0;

	channel = FUNC1(dispc, plane);

	return FUNC0(dispc, channel);
}