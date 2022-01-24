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
struct lg216x_state {TYPE_1__* cfg; } ;
struct TYPE_2__ {int lg_chip; } ;

/* Variables and functions */
#define  LG2160 129 
#define  LG2161 128 
 int FUNC0 (struct lg216x_state*) ; 
 int FUNC1 (struct lg216x_state*,int,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct lg216x_state *state, int onoff)
{
	int ret;

	ret = FUNC1(state, 0x0017, 0x23);
	if (FUNC2(ret))
		goto fail;

	ret = FUNC1(state, 0x0016, 0xfc);
	if (FUNC2(ret))
		goto fail;

	switch (state->cfg->lg_chip) {
	case LG2160:
		ret = FUNC1(state, 0x0016,
				       0xfc | ((onoff) ? 0x02 : 0x00));
		break;
	case LG2161:
		ret = FUNC1(state, 0x0016, (onoff) ? 0x10 : 0x00);
		break;
	}
	if (FUNC2(ret))
		goto fail;

	ret = FUNC0(state);
	if (FUNC2(ret))
		goto fail;

	if (onoff) {
		ret = FUNC1(state, 0x0017, 0x03);
		FUNC2(ret);
	}
fail:
	return ret;
}