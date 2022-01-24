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
typedef  size_t u8 ;
typedef  size_t u16 ;
struct iforce {TYPE_1__* core_effects; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FF_CMD_EFFECT ; 
 int /*<<< orphan*/  FF_CORE_SHOULD_PLAY ; 
 unsigned char FUNC0 (size_t) ; 
 unsigned char FUNC1 (size_t) ; 
 size_t FUNC2 (size_t) ; 
 unsigned char FUNC3 (struct iforce*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct iforce*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iforce*,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct iforce* iforce, u16 id, u16 mod_id1, u16 mod_id2,
	u8 effect_type, u8 axes, u16 duration, u16 delay, u16 button,
	u16 interval, u16 direction)
{
	unsigned char data[14];

	duration = FUNC2(duration);
	delay    = FUNC2(delay);
	interval = FUNC2(interval);

	data[0]  = FUNC1(id);
	data[1]  = effect_type;
	data[2]  = FUNC1(axes) | FUNC3(iforce, button);

	data[3]  = FUNC1(duration);
	data[4]  = FUNC0(duration);

	data[5]  = FUNC0(direction);

	data[6]  = FUNC1(interval);
	data[7]  = FUNC0(interval);

	data[8]  = FUNC1(mod_id1);
	data[9]  = FUNC0(mod_id1);
	data[10] = FUNC1(mod_id2);
	data[11] = FUNC0(mod_id2);

	data[12] = FUNC1(delay);
	data[13] = FUNC0(delay);

	/* Stop effect */
/*	iforce_control_playback(iforce, id, 0);*/

	FUNC5(iforce, FF_CMD_EFFECT, data);

	/* If needed, restart effect */
	if (FUNC6(FF_CORE_SHOULD_PLAY, iforce->core_effects[id].flags)) {
		/* BUG: perhaps we should replay n times, instead of 1. But we do not know n */
		FUNC4(iforce, id, 1);
	}

	return 0;
}