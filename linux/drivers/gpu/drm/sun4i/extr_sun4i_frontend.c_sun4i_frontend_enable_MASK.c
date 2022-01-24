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
struct sun4i_frontend {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUN4I_FRONTEND_FRM_CTRL_FRM_START ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_FRM_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct sun4i_frontend *frontend)
{
	FUNC0(frontend->regs, SUN4I_FRONTEND_FRM_CTRL_REG,
			  SUN4I_FRONTEND_FRM_CTRL_FRM_START,
			  SUN4I_FRONTEND_FRM_CTRL_FRM_START);

	return 0;
}