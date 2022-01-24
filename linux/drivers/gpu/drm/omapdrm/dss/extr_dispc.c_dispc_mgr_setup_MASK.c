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
struct omap_overlay_manager_info {int /*<<< orphan*/  cpr_coefs; int /*<<< orphan*/  cpr_enable; int /*<<< orphan*/  partial_alpha_enabled; int /*<<< orphan*/  trans_enabled; int /*<<< orphan*/  trans_key; int /*<<< orphan*/  trans_key_type; int /*<<< orphan*/  default_color; } ;
struct dispc_device {int dummy; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FEAT_CPR ; 
 scalar_t__ FUNC0 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dispc_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dispc_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dispc_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dispc_device*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dispc_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dispc_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct dispc_device *dispc,
			    enum omap_channel channel,
			    const struct omap_overlay_manager_info *info)
{
	FUNC5(dispc, channel, info->default_color);
	FUNC6(dispc, channel, info->trans_key_type,
				info->trans_key);
	FUNC3(dispc, channel, info->trans_enabled);
	FUNC1(dispc, channel,
			info->partial_alpha_enabled);
	if (FUNC0(dispc, FEAT_CPR)) {
		FUNC2(dispc, channel, info->cpr_enable);
		FUNC4(dispc, channel, &info->cpr_coefs);
	}
}