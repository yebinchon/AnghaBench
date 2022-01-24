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
struct msm_dsi_host {int /*<<< orphan*/  err_work; int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_IRQ_MASK_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct msm_dsi_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_dsi_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_dsi_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_dsi_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_dsi_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_dsi_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct msm_dsi_host*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct msm_dsi_host *msm_host)
{
	/* disable dsi error interrupt */
	FUNC4(msm_host, DSI_IRQ_MASK_ERROR, 0);

	FUNC1(msm_host);
	FUNC3(msm_host);
	FUNC0(msm_host);
	FUNC6(msm_host);
	FUNC5(msm_host);
	FUNC2(msm_host);

	FUNC7(msm_host->workqueue, &msm_host->err_work);
}