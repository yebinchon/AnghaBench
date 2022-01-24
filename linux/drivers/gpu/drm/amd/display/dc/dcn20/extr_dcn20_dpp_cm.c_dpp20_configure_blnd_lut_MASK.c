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
struct dcn20_dpp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_BLNDGAM_LUT_INDEX ; 
 int /*<<< orphan*/  CM_BLNDGAM_LUT_WRITE_EN_MASK ; 
 int /*<<< orphan*/  CM_BLNDGAM_LUT_WRITE_SEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dcn20_dpp* FUNC2 (struct dpp*) ; 

__attribute__((used)) static void FUNC3(
		struct dpp *dpp_base,
		bool is_ram_a)
{
	struct dcn20_dpp *dpp = FUNC2(dpp_base);

	FUNC1(CM_BLNDGAM_LUT_WRITE_EN_MASK,
			CM_BLNDGAM_LUT_WRITE_EN_MASK, 7);
	FUNC1(CM_BLNDGAM_LUT_WRITE_EN_MASK,
			CM_BLNDGAM_LUT_WRITE_SEL, is_ram_a == true ? 0:1);
	FUNC0(CM_BLNDGAM_LUT_INDEX, 0, CM_BLNDGAM_LUT_INDEX, 0);
}