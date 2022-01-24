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
struct dcn10_dpp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_IGAM_CONTROL ; 
 int /*<<< orphan*/  CM_IGAM_INPUT_FORMAT ; 
 int /*<<< orphan*/  CM_IGAM_LUT_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dcn10_dpp* FUNC1 (struct dpp*) ; 

__attribute__((used)) static void FUNC2(
		struct dpp *dpp_base,
		bool is_float)
{
	struct dcn10_dpp *dpp = FUNC1(dpp_base);

	if (is_float) {
		FUNC0(CM_IGAM_CONTROL, CM_IGAM_INPUT_FORMAT, 3);
		FUNC0(CM_IGAM_CONTROL, CM_IGAM_LUT_MODE, 1);
	} else {
		FUNC0(CM_IGAM_CONTROL, CM_IGAM_INPUT_FORMAT, 2);
		FUNC0(CM_IGAM_CONTROL, CM_IGAM_LUT_MODE, 0);
	}
}