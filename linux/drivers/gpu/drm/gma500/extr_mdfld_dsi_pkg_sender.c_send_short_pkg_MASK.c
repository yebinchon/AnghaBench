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
typedef  int u32 ;
struct mdfld_dsi_pkg_sender {int mipi_hs_gen_ctrl_reg; int mipi_lp_gen_ctrl_reg; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct mdfld_dsi_pkg_sender *sender, u8 data_type,
			u8 cmd, u8 param, bool hs)
{
	struct drm_device *dev = sender->dev;
	u32 ctrl_reg;
	u32 val;
	u8 virtual_channel = 0;

	if (hs) {
		ctrl_reg = sender->mipi_hs_gen_ctrl_reg;

		/* FIXME: wait_for_hs_fifos_empty(sender); */
	} else {
		ctrl_reg = sender->mipi_lp_gen_ctrl_reg;

		/* FIXME: wait_for_lp_fifos_empty(sender); */
	}

	val = FUNC0(param, 23, 16) | FUNC0(cmd, 15, 8) |
		FUNC0(virtual_channel, 7, 6) | FUNC0(data_type, 5, 0);

	FUNC1(ctrl_reg, val);

	return 0;
}