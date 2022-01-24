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
struct serio {TYPE_1__* ports; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; TYPE_1__* out_port; TYPE_1__* in_port; struct serio* mx_serio; int /*<<< orphan*/  lock; int /*<<< orphan*/  write; } ;
struct ps2mult {TYPE_1__* ports; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; TYPE_1__* out_port; TYPE_1__* in_port; struct ps2mult* mx_serio; int /*<<< orphan*/  lock; int /*<<< orphan*/  write; } ;
struct TYPE_2__ {struct serio* serio; int /*<<< orphan*/  sel; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t PS2MULT_KBD_PORT ; 
 int PS2MULT_NUM_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct serio*) ; 
 struct serio* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ps2mult_controls ; 
 int FUNC3 (struct serio*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct serio*) ; 
 int FUNC5 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC6 (struct serio*) ; 
 int /*<<< orphan*/  FUNC7 (struct serio*,struct serio*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct serio *serio, struct serio_driver *drv)
{
	struct ps2mult *psm;
	int i;
	int error;

	if (!serio->write)
		return -EINVAL;

	psm = FUNC2(sizeof(*psm), GFP_KERNEL);
	if (!psm)
		return -ENOMEM;

	FUNC8(&psm->lock);
	psm->mx_serio = serio;

	for (i = 0; i < PS2MULT_NUM_PORTS; i++) {
		psm->ports[i].sel = ps2mult_controls[i];
		error = FUNC3(psm, i);
		if (error)
			goto err_out;
	}

	psm->in_port = psm->out_port = &psm->ports[PS2MULT_KBD_PORT];

	FUNC7(serio, psm);
	error = FUNC5(serio, drv);
	if (error)
		goto err_out;

	FUNC4(psm);

	for (i = 0; i <  PS2MULT_NUM_PORTS; i++) {
		struct serio *s = psm->ports[i].serio;

		FUNC0(&serio->dev, "%s port at %s\n", s->name, serio->phys);
		FUNC6(s);
	}

	return 0;

err_out:
	while (--i >= 0)
		FUNC1(psm->ports[i].serio);
	FUNC1(psm);
	return error;
}