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

/* Variables and functions */
 int DNV_NUM_CHANNELS ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  d_cr_dmap ; 
 int /*<<< orphan*/  d_cr_dmap1 ; 
 int /*<<< orphan*/  d_cr_dmap2 ; 
 int /*<<< orphan*/  d_cr_dmap3 ; 
 int /*<<< orphan*/  d_cr_dmap4 ; 
 int /*<<< orphan*/  d_cr_dmap5 ; 
 int /*<<< orphan*/  d_cr_drp ; 
 int /*<<< orphan*/  d_cr_dsch ; 
 int /*<<< orphan*/  d_cr_ecc_ctrl ; 
 int /*<<< orphan*/ * dmap ; 
 int /*<<< orphan*/ * dmap1 ; 
 int /*<<< orphan*/ * dmap2 ; 
 int /*<<< orphan*/ * dmap3 ; 
 int /*<<< orphan*/ * dmap4 ; 
 int /*<<< orphan*/ * dmap5 ; 
 int /*<<< orphan*/ * dnv_dports ; 
 int /*<<< orphan*/ * drp ; 
 int /*<<< orphan*/  dsch ; 
 int /*<<< orphan*/ * ecc_ctrl ; 

__attribute__((used)) static int FUNC2(void)
{
	int i;

	if (FUNC0(&dsch, d_cr_dsch))
		return -ENODEV;

	for (i = 0; i < DNV_NUM_CHANNELS; i++)
		if (FUNC1(&ecc_ctrl[i], d_cr_ecc_ctrl, dnv_dports[i]) ||
			FUNC1(&drp[i], d_cr_drp, dnv_dports[i]) ||
			FUNC1(&dmap[i], d_cr_dmap, dnv_dports[i]) ||
			FUNC1(&dmap1[i], d_cr_dmap1, dnv_dports[i]) ||
			FUNC1(&dmap2[i], d_cr_dmap2, dnv_dports[i]) ||
			FUNC1(&dmap3[i], d_cr_dmap3, dnv_dports[i]) ||
			FUNC1(&dmap4[i], d_cr_dmap4, dnv_dports[i]) ||
			FUNC1(&dmap5[i], d_cr_dmap5, dnv_dports[i]))
			return -ENODEV;

	return 0;
}