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
typedef  int u8 ;
struct ps2dev {TYPE_1__* serio; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PS2_CMD_SETRES ; 
 int /*<<< orphan*/  PS2_CMD_SETSCALE11 ; 
 int FUNC0 (struct ps2dev*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ps2dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ps2dev*) ; 

int FUNC4(struct ps2dev *ps2dev, u8 command)
{
	int i;
	int retval;

	FUNC2(ps2dev);

	retval = FUNC0(ps2dev, NULL, PS2_CMD_SETSCALE11);
	if (retval)
		goto out;

	for (i = 6; i >= 0; i -= 2) {
		u8 d = (command >> i) & 3;
		retval = FUNC0(ps2dev, &d, PS2_CMD_SETRES);
		if (retval)
			break;
	}

out:
	FUNC1(&ps2dev->serio->dev, "%02x - %d\n", command, retval);
	FUNC3(ps2dev);
	return retval;
}