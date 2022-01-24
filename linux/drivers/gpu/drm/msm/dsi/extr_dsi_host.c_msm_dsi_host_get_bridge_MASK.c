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
struct msm_dsi_host {int /*<<< orphan*/  device_node; } ;
struct mipi_dsi_host {int dummy; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 struct drm_bridge* FUNC0 (int /*<<< orphan*/ ) ; 
 struct msm_dsi_host* FUNC1 (struct mipi_dsi_host*) ; 

struct drm_bridge *FUNC2(struct mipi_dsi_host *host)
{
	struct msm_dsi_host *msm_host = FUNC1(host);

	return FUNC0(msm_host->device_node);
}