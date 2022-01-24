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
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  DISPC_CONFIG ; 
 int /*<<< orphan*/  FEAT_ALPHA_FIXED_ZORDER ; 
 int OMAP_DSS_CHANNEL_DIGIT ; 
 int OMAP_DSS_CHANNEL_LCD ; 
 int /*<<< orphan*/  FUNC0 (struct dispc_device*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dispc_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dispc_device *dispc,
						enum omap_channel ch,
						bool enable)
{
	if (!FUNC1(dispc, FEAT_ALPHA_FIXED_ZORDER))
		return;

	if (ch == OMAP_DSS_CHANNEL_LCD)
		FUNC0(dispc, DISPC_CONFIG, enable, 18, 18);
	else if (ch == OMAP_DSS_CHANNEL_DIGIT)
		FUNC0(dispc, DISPC_CONFIG, enable, 19, 19);
}