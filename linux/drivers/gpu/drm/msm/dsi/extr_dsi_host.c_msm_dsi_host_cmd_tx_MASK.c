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
struct msm_dsi_host {int dummy; } ;
struct mipi_dsi_msg {int dummy; } ;
struct mipi_dsi_host {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct msm_dsi_host*,struct mipi_dsi_msg const*) ; 
 struct msm_dsi_host* FUNC1 (struct mipi_dsi_host*) ; 

int FUNC2(struct mipi_dsi_host *host,
				const struct mipi_dsi_msg *msg)
{
	struct msm_dsi_host *msm_host = FUNC1(host);

	return FUNC0(msm_host, msg);
}