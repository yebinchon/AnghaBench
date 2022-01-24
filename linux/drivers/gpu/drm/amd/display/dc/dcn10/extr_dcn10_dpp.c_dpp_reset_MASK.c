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
struct dpp {int dummy; } ;
struct dcn10_dpp {int /*<<< orphan*/  pwl_data; int /*<<< orphan*/  scl_data; int /*<<< orphan*/ * filter_v; int /*<<< orphan*/ * filter_h; int /*<<< orphan*/ * filter_v_c; int /*<<< orphan*/ * filter_h_c; } ;

/* Variables and functions */
 struct dcn10_dpp* FUNC0 (struct dpp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct dpp *dpp_base)
{
	struct dcn10_dpp *dpp = FUNC0(dpp_base);

	dpp->filter_h_c = NULL;
	dpp->filter_v_c = NULL;
	dpp->filter_h = NULL;
	dpp->filter_v = NULL;

	FUNC1(&dpp->scl_data, 0, sizeof(dpp->scl_data));
	FUNC1(&dpp->pwl_data, 0, sizeof(dpp->pwl_data));
}