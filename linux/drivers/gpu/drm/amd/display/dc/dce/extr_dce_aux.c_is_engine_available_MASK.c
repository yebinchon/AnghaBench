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
 int /*<<< orphan*/  AUX_REG_RW_CNTL_STATUS ; 
 scalar_t__ DMCU_CAN_ACCESS_AUX ; 
 struct aux_engine_dce110* FUNC0 (struct dce_aux*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(
	struct dce_aux *engine)
{
	struct aux_engine_dce110 *aux110 = FUNC0(engine);

	uint32_t value = FUNC1(AUX_ARB_CONTROL);
	uint32_t field = FUNC2(
			value,
			AUX_ARB_CONTROL,
			AUX_REG_RW_CNTL_STATUS);

	return (field != DMCU_CAN_ACCESS_AUX);
}