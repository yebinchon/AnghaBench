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
struct msm_dsi_pll {int pll_on; int /*<<< orphan*/  (* disable_seq ) (struct msm_dsi_pll*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msm_dsi_pll*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct msm_dsi_pll *pll)
{
	if (FUNC1(!pll->pll_on))
		return;

	pll->disable_seq(pll);

	pll->pll_on = false;
}