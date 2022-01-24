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
struct msm_dsi_host {int /*<<< orphan*/  byte_clk; int /*<<< orphan*/  esc_clk; int /*<<< orphan*/  src_clk; int /*<<< orphan*/  pixel_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct msm_dsi_host *msm_host)
{
	FUNC0(msm_host->pixel_clk);
	FUNC0(msm_host->src_clk);
	FUNC0(msm_host->esc_clk);
	FUNC0(msm_host->byte_clk);
}