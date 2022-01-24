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
struct drxd_state {int /*<<< orphan*/  m_InitFE_2; int /*<<< orphan*/  m_FeAgRegAgPwd; int /*<<< orphan*/  m_FeAgRegAgAgcSio; scalar_t__ PGA; scalar_t__ type_A; int /*<<< orphan*/  m_InitFE_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FE_AG_REG_AG_PGA_MODE_PFN_PCN_AFY_REN ; 
 int /*<<< orphan*/  B_FE_AG_REG_AG_PGA_MODE__A ; 
 int /*<<< orphan*/  FE_AG_REG_AG_AGC_SIO__A ; 
 int /*<<< orphan*/  FE_AG_REG_AG_PGA_MODE_PFN_PCN_AFY_REN ; 
 int /*<<< orphan*/  FE_AG_REG_AG_PGA_MODE__A ; 
 int /*<<< orphan*/  FE_AG_REG_AG_PWD__A ; 
 int FUNC0 (struct drxd_state*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drxd_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct drxd_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct drxd_state *state)
{
	int status;

	do {
		status = FUNC2(state, state->m_InitFE_1);
		if (status < 0)
			break;

		if (state->type_A) {
			status = FUNC1(state, FE_AG_REG_AG_PGA_MODE__A,
					 FE_AG_REG_AG_PGA_MODE_PFN_PCN_AFY_REN,
					 0);
		} else {
			if (state->PGA)
				status = FUNC0(state, 0);
			else
				status =
				    FUNC1(state, B_FE_AG_REG_AG_PGA_MODE__A,
					    B_FE_AG_REG_AG_PGA_MODE_PFN_PCN_AFY_REN,
					    0);
		}

		if (status < 0)
			break;
		status = FUNC1(state, FE_AG_REG_AG_AGC_SIO__A, state->m_FeAgRegAgAgcSio, 0x0000);
		if (status < 0)
			break;
		status = FUNC1(state, FE_AG_REG_AG_PWD__A, state->m_FeAgRegAgPwd, 0x0000);
		if (status < 0)
			break;

		status = FUNC2(state, state->m_InitFE_2);
		if (status < 0)
			break;

	} while (0);

	return status;
}