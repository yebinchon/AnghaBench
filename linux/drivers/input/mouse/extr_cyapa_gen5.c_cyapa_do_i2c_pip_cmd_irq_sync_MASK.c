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
typedef  int /*<<< orphan*/  u8 ;
struct cyapa_pip_cmd_states {int /*<<< orphan*/  cmd_issued; int /*<<< orphan*/  cmd_ready; } ;
struct TYPE_2__ {struct cyapa_pip_cmd_states pip; } ;
struct cyapa {TYPE_1__ cmd_states; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct cyapa*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(
		struct cyapa *cyapa,
		u8 *cmd, size_t cmd_len,
		unsigned long timeout)
{
	struct cyapa_pip_cmd_states *pip = &cyapa->cmd_states.pip;
	int error;

	/* Wait for interrupt to set ready completion */
	FUNC3(&pip->cmd_ready);

	FUNC1(&pip->cmd_issued);
	error = FUNC2(cyapa, cmd, cmd_len);
	if (error) {
		FUNC0(&pip->cmd_issued);
		return (error < 0) ? error : -EIO;
	}

	/* Wait for interrupt to indicate command is completed. */
	timeout = FUNC5(&pip->cmd_ready,
				FUNC4(timeout));
	if (timeout == 0) {
		FUNC0(&pip->cmd_issued);
		return -ETIMEDOUT;
	}

	return 0;
}