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
struct pwl_params {int /*<<< orphan*/  hw_points_num; int /*<<< orphan*/  rgb_resulted; } ;
struct dpp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpp*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dpp*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dpp*,struct pwl_params const*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpp*,struct pwl_params const*) ; 
 int /*<<< orphan*/  FUNC4 (struct dpp*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct dpp*) ; 
 int /*<<< orphan*/  FUNC6 (struct dpp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC7(
		struct dpp *dpp_base,
		const struct pwl_params *params)
{
	bool is_ram_a = true;

	FUNC1(dpp_base, true);
	FUNC5(dpp_base);
	FUNC4(dpp_base, &is_ram_a);
	if (is_ram_a == true)
		FUNC3(dpp_base, params);
	else
		FUNC2(dpp_base, params);

	FUNC6(dpp_base, params->rgb_resulted, params->hw_points_num, !is_ram_a);
	FUNC0(dpp_base, !is_ram_a);
}