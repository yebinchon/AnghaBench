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
struct msm_dsi {int /*<<< orphan*/  pdev; int /*<<< orphan*/ * host; int /*<<< orphan*/ * phy_dev; int /*<<< orphan*/ * phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_dsi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct msm_dsi *msm_dsi)
{
	if (!msm_dsi)
		return;

	FUNC1(msm_dsi);

	if (msm_dsi->phy_dev) {
		FUNC3(msm_dsi->phy_dev);
		msm_dsi->phy = NULL;
		msm_dsi->phy_dev = NULL;
	}

	if (msm_dsi->host) {
		FUNC0(msm_dsi->host);
		msm_dsi->host = NULL;
	}

	FUNC2(msm_dsi->pdev, NULL);
}