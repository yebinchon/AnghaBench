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
typedef  unsigned int u16 ;
struct grts_state {unsigned int pressure_min; int /*<<< orphan*/  input; scalar_t__ pressure; int /*<<< orphan*/  prop; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int FUNC4(const void *data, void *private)
{
	const u16 *touch_info = data;
	struct grts_state *st = private;
	unsigned int x, y, press = 0x0;

	/* channel data coming in buffer in the order below */
	x = touch_info[0];
	y = touch_info[1];
	if (st->pressure)
		press = touch_info[2];

	if ((!x && !y) || (st->pressure && (press < st->pressure_min))) {
		/* report end of touch */
		FUNC1(st->input, BTN_TOUCH, 0);
		FUNC2(st->input);
		return 0;
	}

	/* report proper touch to subsystem*/
	FUNC3(st->input, &st->prop, x, y, false);
	if (st->pressure)
		FUNC0(st->input, ABS_PRESSURE, press);
	FUNC1(st->input, BTN_TOUCH, 1);
	FUNC2(st->input);

	return 0;
}