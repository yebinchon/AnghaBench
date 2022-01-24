#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sun4i_frontend {int /*<<< orphan*/  regs; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ has_coef_rdy; scalar_t__ has_coef_access_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_FRM_CTRL_COEF_ACCESS_CTRL ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_FRM_CTRL_COEF_RDY ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_FRM_CTRL_REG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sun4i_frontend_horz_coef ; 
 int /*<<< orphan*/ * sun4i_frontend_vert_coef ; 

__attribute__((used)) static void FUNC8(struct sun4i_frontend *frontend)
{
	int i;

	if (frontend->data->has_coef_access_ctrl)
		FUNC7(frontend->regs, SUN4I_FRONTEND_FRM_CTRL_REG,
				  SUN4I_FRONTEND_FRM_CTRL_COEF_ACCESS_CTRL,
				  SUN4I_FRONTEND_FRM_CTRL_COEF_ACCESS_CTRL);

	for (i = 0; i < 32; i++) {
		FUNC6(frontend->regs, FUNC0(i),
			     sun4i_frontend_horz_coef[2 * i]);
		FUNC6(frontend->regs, FUNC3(i),
			     sun4i_frontend_horz_coef[2 * i]);
		FUNC6(frontend->regs, FUNC1(i),
			     sun4i_frontend_horz_coef[2 * i + 1]);
		FUNC6(frontend->regs, FUNC4(i),
			     sun4i_frontend_horz_coef[2 * i + 1]);
		FUNC6(frontend->regs, FUNC2(i),
			     sun4i_frontend_vert_coef[i]);
		FUNC6(frontend->regs, FUNC5(i),
			     sun4i_frontend_vert_coef[i]);
	}

	if (frontend->data->has_coef_rdy)
		FUNC7(frontend->regs,
				  SUN4I_FRONTEND_FRM_CTRL_REG,
				  SUN4I_FRONTEND_FRM_CTRL_COEF_RDY,
				  SUN4I_FRONTEND_FRM_CTRL_COEF_RDY);
}