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
typedef  scalar_t__ u8 ;
struct mdfld_dsi_pkg_sender {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 scalar_t__ MIPI_DSI_DCS_SHORT_WRITE ; 
 scalar_t__ MIPI_DSI_DCS_SHORT_WRITE_PARAM ; 
 int /*<<< orphan*/  FUNC1 (struct mdfld_dsi_pkg_sender*,scalar_t__,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct mdfld_dsi_pkg_sender *sender, u8 cmd,
			u8 param, u8 param_num, bool hs)
{
	u8 data[2];
	unsigned long flags;
	u8 data_type;

	if (!sender) {
		FUNC0("Invalid parameter\n");
		return -EINVAL;
	}

	data[0] = cmd;

	if (param_num) {
		data_type = MIPI_DSI_DCS_SHORT_WRITE_PARAM;
		data[1] = param;
	} else {
		data_type = MIPI_DSI_DCS_SHORT_WRITE;
		data[1] = 0;
	}

	FUNC2(&sender->lock, flags);
	FUNC1(sender, data_type, data, sizeof(data), hs);
	FUNC3(&sender->lock, flags);

	return 0;
}