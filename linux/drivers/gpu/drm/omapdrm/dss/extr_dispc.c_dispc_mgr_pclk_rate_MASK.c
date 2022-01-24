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
typedef  int /*<<< orphan*/  u32 ;
struct dispc_device {unsigned long tv_pclk_rate; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct dispc_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static unsigned long FUNC5(struct dispc_device *dispc,
					 enum omap_channel channel)
{
	unsigned long r;

	if (FUNC4(channel)) {
		int pcd;
		u32 l;

		l = FUNC3(dispc, FUNC0(channel));

		pcd = FUNC1(l, 7, 0);

		r = FUNC2(dispc, channel);

		return r / pcd;
	} else {
		return dispc->tv_pclk_rate;
	}
}