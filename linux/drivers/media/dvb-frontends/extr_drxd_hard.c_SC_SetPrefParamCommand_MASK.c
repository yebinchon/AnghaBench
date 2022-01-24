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
typedef  int /*<<< orphan*/  u16 ;
struct drxd_state {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  SC_RA_RAM_CMD_ADDR__A ; 
 int /*<<< orphan*/  SC_RA_RAM_CMD_SET_PREF_PARAM ; 
 int /*<<< orphan*/  SC_RA_RAM_PARAM0__A ; 
 int /*<<< orphan*/  SC_RA_RAM_PARAM1__A ; 
 int FUNC0 (struct drxd_state*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drxd_state*) ; 
 int FUNC2 (struct drxd_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct drxd_state *state,
				  u16 subCmd, u16 param0, u16 param1)
{
	int status;

	FUNC3(&state->mutex);
	do {
		status = FUNC1(state);
		if (status < 0)
			break;
		status = FUNC2(state, SC_RA_RAM_CMD_ADDR__A, subCmd, 0);
		if (status < 0)
			break;
		status = FUNC2(state, SC_RA_RAM_PARAM1__A, param1, 0);
		if (status < 0)
			break;
		status = FUNC2(state, SC_RA_RAM_PARAM0__A, param0, 0);
		if (status < 0)
			break;

		status = FUNC0(state, SC_RA_RAM_CMD_SET_PREF_PARAM);
		if (status < 0)
			break;
	} while (0);
	FUNC4(&state->mutex);
	return status;
}