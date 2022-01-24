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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct dtv_frontend_properties {int /*<<< orphan*/  bandwidth_hz; scalar_t__ hierarchy; int /*<<< orphan*/  code_rate_LP; int /*<<< orphan*/  code_rate_HP; int /*<<< orphan*/  transmission_mode; int /*<<< orphan*/  guard_interval; int /*<<< orphan*/  modulation; } ;
struct dvb_frontend {struct dib7000m_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct dib7000m_state {int internal_clk; int revision; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FEC_2_3 ; 
 int /*<<< orphan*/  FEC_3_4 ; 
 int /*<<< orphan*/  GUARD_INTERVAL_1_32 ; 
 int /*<<< orphan*/  QAM_64 ; 
 int /*<<< orphan*/  TRANSMISSION_MODE_8K ; 
 int FUNC1 (struct dib7000m_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dib7000m_state*,struct dtv_frontend_properties*,int) ; 
 int FUNC3 (struct dib7000m_state*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *demod)
{
	struct dtv_frontend_properties *ch = &demod->dtv_property_cache;
	struct dib7000m_state *state = demod->demodulator_priv;
	struct dtv_frontend_properties schan;
	int ret = 0;
	u32 value, factor;

	schan = *ch;

	schan.modulation = QAM_64;
	schan.guard_interval        = GUARD_INTERVAL_1_32;
	schan.transmission_mode         = TRANSMISSION_MODE_8K;
	schan.code_rate_HP = FEC_2_3;
	schan.code_rate_LP = FEC_3_4;
	schan.hierarchy    = 0;

	FUNC2(state, &schan, 7);

	factor = FUNC0(schan.bandwidth_hz);
	if (factor >= 5000)
		factor = 1;
	else
		factor = 6;

	// always use the setting for 8MHz here lock_time for 7,6 MHz are longer
	value = 30 * state->internal_clk * factor;
	ret |= FUNC3(state, 6,  (u16) ((value >> 16) & 0xffff)); // lock0 wait time
	ret |= FUNC3(state, 7,  (u16)  (value        & 0xffff)); // lock0 wait time
	value = 100 * state->internal_clk * factor;
	ret |= FUNC3(state, 8,  (u16) ((value >> 16) & 0xffff)); // lock1 wait time
	ret |= FUNC3(state, 9,  (u16)  (value        & 0xffff)); // lock1 wait time
	value = 500 * state->internal_clk * factor;
	ret |= FUNC3(state, 10, (u16) ((value >> 16) & 0xffff)); // lock2 wait time
	ret |= FUNC3(state, 11, (u16)  (value        & 0xffff)); // lock2 wait time

	// start search
	value = FUNC1(state, 0);
	ret |= FUNC3(state, 0, (u16) (value | (1 << 9)));

	/* clear n_irq_pending */
	if (state->revision == 0x4000)
		FUNC3(state, 1793, 0);
	else
		FUNC1(state, 537);

	ret |= FUNC3(state, 0, (u16) value);

	return ret;
}