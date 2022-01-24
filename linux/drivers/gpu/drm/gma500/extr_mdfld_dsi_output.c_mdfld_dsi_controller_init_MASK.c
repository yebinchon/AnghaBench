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
struct mdfld_dsi_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mdfld_dsi_config*,int) ; 

void FUNC2(struct mdfld_dsi_config *dsi_config, int pipe)
{
	if (!dsi_config || ((pipe != 0) && (pipe != 2))) {
		FUNC0("Invalid parameters\n");
		return;
	}

	FUNC1(dsi_config, pipe);
}