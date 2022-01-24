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
struct cx24120_state {TYPE_1__* i2c; scalar_t__ mpeg_enabled; } ;
struct cx24120_cmd {int id; int /*<<< orphan*/  len; int /*<<< orphan*/ * arg; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX24120_REG_CMD_ARGS ; 
 int /*<<< orphan*/  CX24120_REG_CMD_END ; 
 int /*<<< orphan*/  CX24120_REG_CMD_START ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  FUNC0 (struct cx24120_state*,int) ; 
 scalar_t__ FUNC1 (struct cx24120_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cx24120_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cx24120_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct cx24120_state *state,
				struct cx24120_cmd *cmd)
{
	int ficus;

	if (state->mpeg_enabled) {
		/* Disable mpeg out on certain commands */
		FUNC0(state, cmd->id);
	}

	FUNC2(state, CX24120_REG_CMD_START, cmd->id);
	FUNC3(state, CX24120_REG_CMD_ARGS, &cmd->arg[0],
			  cmd->len, 1);
	FUNC2(state, CX24120_REG_CMD_END, 0x01);

	ficus = 1000;
	while (FUNC1(state, CX24120_REG_CMD_END)) {
		FUNC6(20);
		ficus -= 20;
		if (ficus == 0) {
			FUNC5("Error sending message to firmware\n");
			return -EREMOTEIO;
		}
	}
	FUNC4(&state->i2c->dev, "sent message 0x%02x\n", cmd->id);

	return 0;
}