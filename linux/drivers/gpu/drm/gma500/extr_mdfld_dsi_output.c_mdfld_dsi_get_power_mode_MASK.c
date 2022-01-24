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
struct mdfld_dsi_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int FUNC1 (struct mdfld_dsi_config*,int,int /*<<< orphan*/ *,int) ; 

int FUNC2(struct mdfld_dsi_config *dsi_config, u32 *mode,
			bool hs)
{
	if (!dsi_config || !mode) {
		FUNC0("Invalid parameter\n");
		return -EINVAL;
	}

	return FUNC1(dsi_config, 0x0a, mode, hs);
}