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
struct mdfld_dsi_pkg_sender {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MIPI_DSI_GENERIC_LONG_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct mdfld_dsi_pkg_sender*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct mdfld_dsi_pkg_sender *sender, u8 *data,
			u32 len, bool hs)
{
	unsigned long flags;

	if (!sender || !data || !len) {
		FUNC0("Invalid parameters\n");
		return -EINVAL;
	}

	FUNC2(&sender->lock, flags);
	FUNC1(sender, MIPI_DSI_GENERIC_LONG_WRITE, data, len, hs);
	FUNC3(&sender->lock, flags);

	return 0;
}