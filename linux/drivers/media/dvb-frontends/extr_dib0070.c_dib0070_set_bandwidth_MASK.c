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
typedef  int u16 ;
struct dvb_frontend {struct dib0070_state* tuner_priv; } ;
struct dib0070_state {TYPE_2__* fe; } ;
struct TYPE_3__ {int bandwidth_hz; scalar_t__ delivery_system; } ;
struct TYPE_4__ {TYPE_1__ dtv_property_cache; } ;

/* Variables and functions */
 scalar_t__ SYS_ISDBT ; 
 int FUNC0 (struct dib0070_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib0070_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe)
	{
	struct dib0070_state *state = fe->tuner_priv;
	u16 tmp = FUNC0(state, 0x02) & 0x3fff;

	if (state->fe->dtv_property_cache.bandwidth_hz/1000 > 7000)
		tmp |= (0 << 14);
	else if (state->fe->dtv_property_cache.bandwidth_hz/1000 > 6000)
		tmp |= (1 << 14);
	else if (state->fe->dtv_property_cache.bandwidth_hz/1000 > 5000)
		tmp |= (2 << 14);
	else
		tmp |= (3 << 14);

	FUNC1(state, 0x02, tmp);

	/* sharpen the BB filter in ISDB-T to have higher immunity to adjacent channels */
	if (state->fe->dtv_property_cache.delivery_system == SYS_ISDBT) {
		u16 value = FUNC0(state, 0x17);

		FUNC1(state, 0x17, value & 0xfffc);
		tmp = FUNC0(state, 0x01) & 0x01ff;
		FUNC1(state, 0x01, tmp | (60 << 9));

		FUNC1(state, 0x17, value);
	}
	return 0;
}