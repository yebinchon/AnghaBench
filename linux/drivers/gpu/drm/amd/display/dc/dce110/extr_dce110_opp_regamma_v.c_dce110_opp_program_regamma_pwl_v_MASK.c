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
struct transform {int dummy; } ;
struct pwl_params {int dummy; } ;
struct dce_transform {int dummy; } ;

/* Variables and functions */
 struct dce_transform* FUNC0 (struct transform*) ; 
 int /*<<< orphan*/  FUNC1 (struct dce_transform*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct transform*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dce_transform*,struct pwl_params const*) ; 
 int /*<<< orphan*/  FUNC4 (struct dce_transform*,struct pwl_params const*) ; 
 int /*<<< orphan*/  FUNC5 (struct dce_transform*) ; 

void FUNC6(
	struct transform *xfm,
	const struct pwl_params *params)
{
	struct dce_transform *xfm_dce = FUNC0(xfm);

	/* Setup regions */
	FUNC4(xfm_dce, params);

	FUNC5(xfm_dce);

	/* Power on gamma LUT memory */
	FUNC2(xfm, true, false, true);

	/* Program PWL */
	FUNC3(xfm_dce, params);

	/* program regamma config */
	FUNC1(xfm_dce, 1);

	/* Power return to auto back */
	FUNC2(xfm, false, false, true);
}