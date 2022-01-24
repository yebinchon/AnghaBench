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
typedef  scalar_t__ uint32_t ;
struct dce_aux {int dummy; } ;
struct aux_engine_dce110 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUX_ARB_CONTROL ; 
 int /*<<< orphan*/  AUX_CONTROL ; 
 int /*<<< orphan*/  AUX_EN ; 
 int /*<<< orphan*/  AUX_REG_RW_CNTL_STATUS ; 
 int /*<<< orphan*/  AUX_RESET ; 
 int /*<<< orphan*/  AUX_RESET_DONE ; 
 int /*<<< orphan*/  AUX_RESET_MASK ; 
 int /*<<< orphan*/  AUX_SW_USE_AUX_REG_REQ ; 
 scalar_t__ DMCU_CAN_ACCESS_AUX ; 
 struct aux_engine_dce110* FUNC0 (struct dce_aux*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ SW_CAN_ACCESS_AUX ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(
	struct dce_aux *engine)
{
	struct aux_engine_dce110 *aux110 = FUNC0(engine);

	uint32_t value = FUNC2(AUX_ARB_CONTROL);
	uint32_t field = FUNC6(
			value,
			AUX_ARB_CONTROL,
			AUX_REG_RW_CNTL_STATUS);
	if (field == DMCU_CAN_ACCESS_AUX)
		return false;
	/* enable AUX before request SW to access AUX */
	value = FUNC2(AUX_CONTROL);
	field = FUNC6(value,
				AUX_CONTROL,
				AUX_EN);

	if (field == 0) {
		FUNC7(
				value,
				1,
				AUX_CONTROL,
				AUX_EN);

		if (FUNC1(AUX_RESET_MASK)) {
			/*DP_AUX block as part of the enable sequence*/
			FUNC7(
				value,
				1,
				AUX_CONTROL,
				AUX_RESET);
		}

		FUNC5(AUX_CONTROL, value);

		if (FUNC1(AUX_RESET_MASK)) {
			/*poll HW to make sure reset it done*/

			FUNC4(AUX_CONTROL, AUX_RESET_DONE, 1,
					1, 11);

			FUNC7(
				value,
				0,
				AUX_CONTROL,
				AUX_RESET);

			FUNC5(AUX_CONTROL, value);

			FUNC4(AUX_CONTROL, AUX_RESET_DONE, 0,
					1, 11);
		}
	} /*if (field)*/

	/* request SW to access AUX */
	FUNC3(AUX_ARB_CONTROL, AUX_SW_USE_AUX_REG_REQ, 1);

	value = FUNC2(AUX_ARB_CONTROL);
	field = FUNC6(
			value,
			AUX_ARB_CONTROL,
			AUX_REG_RW_CNTL_STATUS);

	return (field == SW_CAN_ACCESS_AUX);
}