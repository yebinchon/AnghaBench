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
struct serio_driver {int dummy; } ;
struct serio {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * xport_ops; } ;
struct iforce_serio {TYPE_1__ iforce; struct serio* serio; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_RS232 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  iforce_serio_xport_ops ; 
 int /*<<< orphan*/  FUNC1 (struct iforce_serio*) ; 
 struct iforce_serio* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct serio*) ; 
 int FUNC4 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC5 (struct serio*,struct iforce_serio*) ; 

__attribute__((used)) static int FUNC6(struct serio *serio, struct serio_driver *drv)
{
	struct iforce_serio *iforce_serio;
	int err;

	iforce_serio = FUNC2(sizeof(*iforce_serio), GFP_KERNEL);
	if (!iforce_serio)
		return -ENOMEM;

	iforce_serio->iforce.xport_ops = &iforce_serio_xport_ops;

	iforce_serio->serio = serio;
	FUNC5(serio, iforce_serio);

	err = FUNC4(serio, drv);
	if (err)
		goto fail1;

	err = FUNC0(&serio->dev, BUS_RS232, &iforce_serio->iforce);
	if (err)
		goto fail2;

	return 0;

 fail2:	FUNC3(serio);
 fail1:	FUNC5(serio, NULL);
	FUNC1(iforce_serio);
	return err;
}