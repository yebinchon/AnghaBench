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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mdfld_dsi_pkg_sender {int dummy; } ;
struct mdfld_dsi_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 struct mdfld_dsi_pkg_sender* FUNC1 (struct mdfld_dsi_config*) ; 
 int FUNC2 (struct mdfld_dsi_pkg_sender*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC3(struct mdfld_dsi_config *dsi_config,
				u8 dcs, u32 *data, bool hs)
{
	struct mdfld_dsi_pkg_sender *sender
		= FUNC1(dsi_config);

	if (!sender || !data) {
		FUNC0("Invalid parameter\n");
		return -EINVAL;
	}

	return FUNC2(sender, dcs, data, 1, hs);
}