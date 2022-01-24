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
typedef  int /*<<< orphan*/  u16 ;
struct mdfld_dsi_pkg_sender {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MIPI_DSI_DCS_READ ; 
 int FUNC1 (struct mdfld_dsi_pkg_sender*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct mdfld_dsi_pkg_sender *sender, u8 cmd,
		u32 *data, u16 len, bool hs)
{
	if (!sender || !data || !len) {
		FUNC0("Invalid parameters\n");
		return -EINVAL;
	}

	return FUNC1(sender, MIPI_DSI_DCS_READ, &cmd, 1,
				data, len, hs);
}