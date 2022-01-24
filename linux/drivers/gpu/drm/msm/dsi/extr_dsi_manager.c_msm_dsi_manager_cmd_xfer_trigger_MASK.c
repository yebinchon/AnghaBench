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
typedef  int /*<<< orphan*/  u32 ;
struct msm_dsi {struct mipi_dsi_host* host; } ;
struct mipi_dsi_host {int dummy; } ;

/* Variables and functions */
 int DSI_0 ; 
 scalar_t__ FUNC0 () ; 
 struct msm_dsi* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mipi_dsi_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC3(int id, u32 dma_base, u32 len)
{
	struct msm_dsi *msm_dsi = FUNC1(id);
	struct msm_dsi *msm_dsi0 = FUNC1(DSI_0);
	struct mipi_dsi_host *host = msm_dsi->host;

	if (FUNC0() && (id == DSI_0))
		return false;

	if (FUNC0() && msm_dsi0)
		FUNC2(msm_dsi0->host, dma_base, len);

	FUNC2(host, dma_base, len);

	return true;
}