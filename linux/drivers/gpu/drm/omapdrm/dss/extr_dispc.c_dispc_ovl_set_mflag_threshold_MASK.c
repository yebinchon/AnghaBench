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
 int FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dispc_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct dispc_device *dispc,
					  enum omap_plane_id plane,
					  int low, int high)
{
	FUNC2(dispc, FUNC0(plane),
		FUNC1(high, 31, 16) |	FUNC1(low, 15, 0));
}