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
typedef  enum omap_burst_size { ____Placeholder_omap_burst_size } omap_burst_size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dispc_device*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct dispc_device *dispc,
				     enum omap_plane_id plane,
				     enum omap_burst_size burst_size)
{
	static const unsigned int shifts[] = { 6, 14, 14, 14, 14, };
	int shift;

	shift = shifts[plane];
	FUNC1(dispc, FUNC0(plane), burst_size,
		    shift + 1, shift);
}