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
struct dispc_device {TYPE_1__* feat; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {unsigned long max_lcd_pclk; unsigned long max_tv_pclk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static bool FUNC1(struct dispc_device *dispc,
			       enum omap_channel channel,
			       unsigned long pclk)
{
	if (FUNC0(channel))
		return pclk <= dispc->feat->max_lcd_pclk;
	else
		return pclk <= dispc->feat->max_tv_pclk;
}