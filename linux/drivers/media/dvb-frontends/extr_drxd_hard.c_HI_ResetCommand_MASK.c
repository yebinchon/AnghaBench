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
struct drxd_state {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int FUNC0 (struct drxd_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HI_RA_RAM_SRV_CMD_RESET ; 
 int /*<<< orphan*/  HI_RA_RAM_SRV_RST_KEY_ACT ; 
 int /*<<< orphan*/  HI_RA_RAM_SRV_RST_KEY__A ; 
 int FUNC1 (struct drxd_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct drxd_state *state)
{
	int status;

	FUNC3(&state->mutex);
	status = FUNC1(state, HI_RA_RAM_SRV_RST_KEY__A,
			 HI_RA_RAM_SRV_RST_KEY_ACT, 0);
	if (status == 0)
		status = FUNC0(state, HI_RA_RAM_SRV_CMD_RESET, NULL);
	FUNC4(&state->mutex);
	FUNC2(1);
	return status;
}