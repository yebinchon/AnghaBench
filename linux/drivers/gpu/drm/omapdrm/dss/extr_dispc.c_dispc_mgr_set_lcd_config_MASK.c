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
struct dss_lcd_mgr_config {int /*<<< orphan*/  lcden_sig_polarity; int /*<<< orphan*/  video_port_width; int /*<<< orphan*/  clock_info; int /*<<< orphan*/  fifohandcheck; int /*<<< orphan*/  stallmode; int /*<<< orphan*/  io_pad_mode; } ;
struct dispc_device {int dummy; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dispc_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dispc_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dispc_device*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dispc_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dispc_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct dispc_device *dispc,
				     enum omap_channel channel,
				     const struct dss_lcd_mgr_config *config)
{
	FUNC4(dispc, config->io_pad_mode);

	FUNC2(dispc, channel, config->stallmode);
	FUNC1(dispc, channel, config->fifohandcheck);

	FUNC3(dispc, channel, &config->clock_info);

	FUNC6(dispc, channel, config->video_port_width);

	FUNC0(dispc, config->lcden_sig_polarity);

	FUNC5(dispc, channel);
}