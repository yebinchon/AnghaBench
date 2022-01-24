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
struct ps2dev {TYPE_1__* serio; } ;
struct atkbd {int id; scalar_t__ translated; struct ps2dev ps2dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATKBD_CMD_GETID ; 
 int /*<<< orphan*/  ATKBD_CMD_RESET_BAT ; 
 int /*<<< orphan*/  ATKBD_CMD_SETLEDS ; 
 int /*<<< orphan*/  FUNC0 (struct atkbd*) ; 
 scalar_t__ atkbd_reset ; 
 int /*<<< orphan*/  atkbd_skip_deactivate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ps2dev*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 

__attribute__((used)) static int FUNC5(struct atkbd *atkbd)
{
	struct ps2dev *ps2dev = &atkbd->ps2dev;
	unsigned char param[2];

/*
 * Some systems, where the bit-twiddling when testing the io-lines of the
 * controller may confuse the keyboard need a full reset of the keyboard. On
 * these systems the BIOS also usually doesn't do it for us.
 */

	if (atkbd_reset)
		if (FUNC3(ps2dev, NULL, ATKBD_CMD_RESET_BAT))
			FUNC2(&ps2dev->serio->dev,
				 "keyboard reset failed on %s\n",
				 ps2dev->serio->phys);

/*
 * Then we check the keyboard ID. We should get 0xab83 under normal conditions.
 * Some keyboards report different values, but the first byte is always 0xab or
 * 0xac. Some old AT keyboards don't report anything. If a mouse is connected, this
 * should make sure we don't try to set the LEDs on it.
 */

	param[0] = param[1] = 0xa5;	/* initialize with invalid values */
	if (FUNC3(ps2dev, param, ATKBD_CMD_GETID)) {

/*
 * If the get ID command failed, we check if we can at least set the LEDs on
 * the keyboard. This should work on every keyboard out there. It also turns
 * the LEDs off, which we want anyway.
 */
		param[0] = 0;
		if (FUNC3(ps2dev, param, ATKBD_CMD_SETLEDS))
			return -1;
		atkbd->id = 0xabba;
		return 0;
	}

	if (!FUNC4(param[0]))
		return -1;

	atkbd->id = (param[0] << 8) | param[1];

	if (atkbd->id == 0xaca1 && atkbd->translated) {
		FUNC1(&ps2dev->serio->dev,
			"NCD terminal keyboards are only supported on non-translating controllers. "
			"Use i8042.direct=1 to disable translation.\n");
		return -1;
	}

/*
 * Make sure nothing is coming from the keyboard and disturbs our
 * internal state.
 */
	if (!atkbd_skip_deactivate)
		FUNC0(atkbd);

	return 0;
}