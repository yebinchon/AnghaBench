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
struct grip_mp {TYPE_1__** port; struct gameport* gameport; } ;
struct gameport_driver {int dummy; } ;
struct gameport {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GAMEPORT_MODE_RAW ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct gameport*) ; 
 int FUNC1 (struct gameport*,struct gameport_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gameport*,struct grip_mp*) ; 
 int /*<<< orphan*/  FUNC3 (struct gameport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gameport*,int) ; 
 int /*<<< orphan*/  grip_poll ; 
 int /*<<< orphan*/  FUNC5 (struct grip_mp*) ; 
 struct grip_mp* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct grip_mp*) ; 

__attribute__((used)) static int FUNC8(struct gameport *gameport, struct gameport_driver *drv)
{
	struct grip_mp *grip;
	int err;

	if (!(grip = FUNC6(sizeof(struct grip_mp), GFP_KERNEL)))
		return -ENOMEM;

	grip->gameport = gameport;

	FUNC2(gameport, grip);

	err = FUNC1(gameport, drv, GAMEPORT_MODE_RAW);
	if (err)
		goto fail1;

	FUNC3(gameport, grip_poll);
	FUNC4(gameport, 20);

	if (!FUNC7(grip)) {
		err = -ENODEV;
		goto fail2;
	}

	if (!grip->port[0]->mode && !grip->port[1]->mode && !grip->port[2]->mode && !grip->port[3]->mode) {
		/* nothing plugged in */
		err = -ENODEV;
		goto fail2;
	}

	return 0;

fail2:	FUNC0(gameport);
fail1:	FUNC2(gameport, NULL);
	FUNC5(grip);
	return err;
}