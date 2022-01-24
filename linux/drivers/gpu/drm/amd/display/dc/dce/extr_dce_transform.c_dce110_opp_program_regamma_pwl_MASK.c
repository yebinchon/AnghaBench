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
 int /*<<< orphan*/  FUNC1 (struct dce_transform*,struct pwl_params const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dce_transform*,struct pwl_params const*) ; 

void FUNC3(struct transform *xfm,
				    const struct pwl_params *params)
{
	struct dce_transform *xfm_dce = FUNC0(xfm);

	/* Setup regions */
	FUNC2(xfm_dce, params);

	/* Program PWL */
	FUNC1(xfm_dce, params);
}