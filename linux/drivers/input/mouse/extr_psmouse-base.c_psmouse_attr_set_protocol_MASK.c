#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; } ;
struct serio {scalar_t__ parent; TYPE_2__ id; int /*<<< orphan*/ * drv; int /*<<< orphan*/  children; } ;
typedef  struct psmouse_protocol {scalar_t__ smbus_companion; } const psmouse_protocol ;
struct TYPE_3__ {struct serio* serio; } ;
struct psmouse {int /*<<< orphan*/  (* pt_activate ) (struct psmouse*) ;struct input_dev* dev; int /*<<< orphan*/  (* disconnect ) (struct psmouse*) ;struct psmouse_protocol const* protocol; int /*<<< orphan*/  (* pt_deactivate ) (struct psmouse*) ;TYPE_1__ ps2dev; } ;
struct input_dev {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t EIO ; 
 size_t ENODEV ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  PSMOUSE_CMD_MODE ; 
 int /*<<< orphan*/  PSMOUSE_IGNORE ; 
 int /*<<< orphan*/  PSMOUSE_INITIALIZING ; 
 scalar_t__ SERIO_PS_PSTHRU ; 
 struct input_dev* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 int FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  psmouse_drv ; 
 int /*<<< orphan*/  FUNC7 (struct psmouse*) ; 
 int /*<<< orphan*/  psmouse_mutex ; 
 struct psmouse_protocol const* FUNC8 (char const*,size_t) ; 
 struct psmouse_protocol const* psmouse_protocols ; 
 int /*<<< orphan*/  FUNC9 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC10 (struct psmouse*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct psmouse*,struct psmouse_protocol const*) ; 
 int /*<<< orphan*/  FUNC12 (struct psmouse*,char*) ; 
 struct psmouse* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct serio*) ; 
 int /*<<< orphan*/  FUNC15 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC16 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC17 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC18 (struct psmouse*) ; 

__attribute__((used)) static ssize_t FUNC19(struct psmouse *psmouse, void *data, const char *buf, size_t count)
{
	struct serio *serio = psmouse->ps2dev.serio;
	struct psmouse *parent = NULL;
	struct input_dev *old_dev, *new_dev;
	const struct psmouse_protocol *proto, *old_proto;
	int error;
	int retry = 0;

	proto = FUNC8(buf, count);
	if (!proto)
		return -EINVAL;

	if (psmouse->protocol == proto)
		return count;

	new_dev = FUNC0();
	if (!new_dev)
		return -ENOMEM;

	while (!FUNC4(&serio->children)) {
		if (++retry > 3) {
			FUNC12(psmouse,
				     "failed to destroy children ports, protocol change aborted.\n");
			FUNC1(new_dev);
			return -EIO;
		}

		FUNC6(&psmouse_mutex);
		FUNC14(serio);
		FUNC5(&psmouse_mutex);

		if (serio->drv != &psmouse_drv) {
			FUNC1(new_dev);
			return -ENODEV;
		}

		if (psmouse->protocol == proto) {
			FUNC1(new_dev);
			return count; /* switched by other thread */
		}
	}

	if (serio->parent && serio->id.type == SERIO_PS_PSTHRU) {
		parent = FUNC13(serio->parent);
		if (parent->pt_deactivate)
			parent->pt_deactivate(parent);
	}

	old_dev = psmouse->dev;
	old_proto = psmouse->protocol;

	if (psmouse->disconnect)
		psmouse->disconnect(psmouse);

	FUNC10(psmouse, PSMOUSE_IGNORE);

	psmouse->dev = new_dev;
	FUNC10(psmouse, PSMOUSE_INITIALIZING);

	if (FUNC11(psmouse, proto) < 0) {
		FUNC9(psmouse);
		/* default to PSMOUSE_PS2 */
		FUNC11(psmouse, &psmouse_protocols[0]);
	}

	FUNC7(psmouse);
	FUNC10(psmouse, PSMOUSE_CMD_MODE);

	if (psmouse->protocol->smbus_companion) {
		FUNC1(psmouse->dev);
		psmouse->dev = NULL;
	} else {
		error = FUNC2(psmouse->dev);
		if (error) {
			if (psmouse->disconnect)
				psmouse->disconnect(psmouse);

			FUNC10(psmouse, PSMOUSE_IGNORE);
			FUNC1(new_dev);
			psmouse->dev = old_dev;
			FUNC10(psmouse, PSMOUSE_INITIALIZING);
			FUNC11(psmouse, old_proto);
			FUNC7(psmouse);
			FUNC10(psmouse, PSMOUSE_CMD_MODE);

			return error;
		}
	}

	if (old_dev)
		FUNC3(old_dev);

	if (parent && parent->pt_activate)
		parent->pt_activate(parent);

	return count;
}