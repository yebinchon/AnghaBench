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
typedef  scalar_t__ u8 ;
struct wacom {int result; scalar_t__ expect; int /*<<< orphan*/  cmd_done; } ;
struct serio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wacom*) ; 
 int FUNC2 (struct serio*,scalar_t__ const*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct wacom *wacom, struct serio *serio,
			       const u8 *cmd, const char *desc)
{
	int err;
	unsigned long u;

	wacom->expect = cmd[1];
	FUNC0(&wacom->cmd_done);

	err = FUNC2(serio, cmd);
	if (err)
		return err;

	u = FUNC3(&wacom->cmd_done, HZ);
	if (u == 0) {
		/* Timeout, process what we've received. */
		FUNC1(wacom);
	}

	wacom->expect = 0;
	return wacom->result;
}