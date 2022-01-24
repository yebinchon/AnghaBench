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
struct msm_dsi_host {int mode_flags; scalar_t__ enabled; scalar_t__ power_on; } ;

/* Variables and functions */
 int MIPI_DSI_MODE_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (struct msm_dsi_host*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct msm_dsi_host *msm_host)
{
	if (!(msm_host->mode_flags & MIPI_DSI_MODE_VIDEO))
		return;

	if (msm_host->power_on && msm_host->enabled) {
		FUNC0(msm_host);
		/* delay 4 ms to skip BLLP */
		FUNC1(2000, 4000);
	}
}