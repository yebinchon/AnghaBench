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
struct dce_aux {int /*<<< orphan*/ * ddc; } ;
struct aux_engine_dce110 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUX_ARB_CONTROL ; 
 int /*<<< orphan*/  AUX_SW_DONE_USING_AUX_REG ; 
 struct aux_engine_dce110* FUNC0 (struct dce_aux*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(
	struct dce_aux *engine)
{
	struct aux_engine_dce110 *aux110 = FUNC0(engine);

	FUNC2(engine->ddc);

	engine->ddc = NULL;

	FUNC1(AUX_ARB_CONTROL, AUX_SW_DONE_USING_AUX_REG, 1);
}