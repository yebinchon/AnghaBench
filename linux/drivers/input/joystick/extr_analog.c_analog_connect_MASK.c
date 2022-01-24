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
struct gameport_driver {int dummy; } ;
struct gameport {int dummy; } ;
struct analog_port {TYPE_1__* analog; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; scalar_t__ mask; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct analog_port*,TYPE_1__*,int) ; 
 int FUNC1 (struct analog_port*) ; 
 int FUNC2 (struct gameport*,struct gameport_driver*,struct analog_port*) ; 
 int /*<<< orphan*/  analog_poll ; 
 int /*<<< orphan*/  FUNC3 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC4 (struct gameport*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct gameport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gameport*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct analog_port*) ; 
 struct analog_port* FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct gameport *gameport, struct gameport_driver *drv)
{
	struct analog_port *port;
	int i;
	int err;

	if (!(port = FUNC9(sizeof(struct analog_port), GFP_KERNEL)))
		return - ENOMEM;

	err = FUNC2(gameport, drv, port);
	if (err)
		goto fail1;

	err = FUNC1(port);
	if (err)
		goto fail2;

	FUNC5(gameport, analog_poll);
	FUNC6(gameport, 10);

	for (i = 0; i < 2; i++)
		if (port->analog[i].mask) {
			err = FUNC0(port, port->analog + i, i);
			if (err)
				goto fail3;
		}

	return 0;

 fail3: while (--i >= 0)
		if (port->analog[i].mask)
			FUNC7(port->analog[i].dev);
 fail2:	FUNC3(gameport);
 fail1:	FUNC4(gameport, NULL);
	FUNC8(port);
	return err;
}