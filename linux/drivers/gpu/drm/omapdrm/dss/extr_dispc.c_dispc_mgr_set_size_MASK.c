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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct dispc_device {TYPE_1__* feat; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int /*<<< orphan*/  mgr_width_start; int /*<<< orphan*/  mgr_height_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dispc_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct dispc_device *dispc,
			       enum omap_channel channel, u16 width, u16 height)
{
	u32 val;

	val = FUNC1(height - 1, dispc->feat->mgr_height_start, 16) |
		FUNC1(width - 1, dispc->feat->mgr_width_start, 0);

	FUNC2(dispc, FUNC0(channel), val);
}