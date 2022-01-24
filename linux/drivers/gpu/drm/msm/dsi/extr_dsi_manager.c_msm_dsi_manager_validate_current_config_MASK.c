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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(u8 id)
{
	bool is_dual_dsi = FUNC1();

	/*
	 * For dual DSI, we only have one drm panel. For this
	 * use case, we register only one bridge/connector.
	 * Skip bridge/connector initialisation if it is
	 * slave-DSI for dual DSI configuration.
	 */
	if (is_dual_dsi && !FUNC2(id)) {
		FUNC0("Skip bridge registration for slave DSI->id: %d\n", id);
		return false;
	}
	return true;
}