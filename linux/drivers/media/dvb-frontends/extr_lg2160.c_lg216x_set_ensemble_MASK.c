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
typedef  int u16 ;
struct lg216x_state {TYPE_1__* cfg; } ;
struct TYPE_2__ {int lg_chip; } ;

/* Variables and functions */
#define  LG2160 129 
#define  LG2161 128 
 int FUNC0 (struct lg216x_state*,int,int*) ; 
 int FUNC1 (struct lg216x_state*,int,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct lg216x_state *state, int id)
{
	int ret;
	u16 reg;
	u8 val;

	switch (state->cfg->lg_chip) {
	case LG2160:
		reg = 0x0400;
		break;
	case LG2161:
	default:
		reg = 0x0500;
		break;
	}

	ret = FUNC0(state, reg, &val);
	if (FUNC2(ret))
		goto fail;

	val &= 0xfe;
	val |= (id) ? 0x01 : 0x00;

	ret = FUNC1(state, reg, val);
	FUNC2(ret);
fail:
	return ret;
}