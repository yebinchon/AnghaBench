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
typedef  int u8 ;
typedef  int u16 ;
struct dtv_frontend_properties {int isdbt_partial_reception; int guard_interval; int isdbt_sb_mode; int isdbt_sb_subchannel; TYPE_2__* layer; } ;
struct dib8000_state {int mode; int seg_diff_mask; int layer_b_nb_seg; int layer_c_nb_seg; int differential_constellation; int seg_mask; scalar_t__ isdbt_cfg_loaded; TYPE_1__** fe; } ;
struct TYPE_4__ {scalar_t__ modulation; int segment_count; } ;
struct TYPE_3__ {struct dtv_frontend_properties dtv_property_cache; } ;

/* Variables and functions */
 scalar_t__ DQPSK ; 
 int /*<<< orphan*/  ana_fe_coeff_1seg ; 
 int /*<<< orphan*/  ana_fe_coeff_3seg ; 
 int FUNC0 (struct dib8000_state*,int) ; 
 int FUNC1 (struct dib8000_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dib8000_state*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dib8000_state*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dib8000_state*) ; 
 int FUNC5 (struct dib8000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dib8000_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct dib8000_state*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dib8000_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct dib8000_state*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dib8000_state*,int,int) ; 
 int FUNC11 (struct dib8000_state*) ; 
 int* permu_seg ; 

__attribute__((used)) static void FUNC12(struct dib8000_state *state, u8 seq, u8 autosearching)
{
	u16 p_cfr_left_edge  = 0, p_cfr_right_edge = 0;
	u16 tmcc_pow = 0, ana_gain = 0, tmp = 0, i = 0, nbseg_diff = 0 ;
	u16 max_constellation = DQPSK;
	int init_prbs;
	struct dtv_frontend_properties *c = &state->fe[0]->dtv_property_cache;

	if (autosearching)
		c->isdbt_partial_reception = 1;

	/* P_mode */
	FUNC10(state, 10, (seq << 4));

	/* init mode */
	state->mode = FUNC11(state);

	/* set guard */
	tmp = FUNC3(state, 1);
	FUNC10(state, 1, (tmp&0xfffc) | (c->guard_interval & 0x3));

	FUNC10(state, 274, (FUNC3(state, 274) & 0xffcf) | ((c->isdbt_partial_reception & 1) << 5) | ((c->isdbt_sb_mode & 1) << 4));

	/* signal optimization parameter */
	if (c->isdbt_partial_reception) {
		state->seg_diff_mask = (c->layer[0].modulation == DQPSK) << permu_seg[0];
		for (i = 1; i < 3; i++)
			nbseg_diff += (c->layer[i].modulation == DQPSK) * c->layer[i].segment_count;
		for (i = 0; i < nbseg_diff; i++)
			state->seg_diff_mask |= 1 << permu_seg[i+1];
	} else {
		for (i = 0; i < 3; i++)
			nbseg_diff += (c->layer[i].modulation == DQPSK) * c->layer[i].segment_count;
		for (i = 0; i < nbseg_diff; i++)
			state->seg_diff_mask |= 1 << permu_seg[i];
	}

	if (state->seg_diff_mask)
		FUNC10(state, 268, (FUNC3(state, 268) & 0xF9FF) | 0x0200);
	else
		FUNC10(state, 268, (2 << 9) | 39); /*init value */

	for (i = 0; i < 3; i++)
		max_constellation = FUNC5(state, i, max_constellation);
	if (autosearching == 0) {
		state->layer_b_nb_seg = c->layer[1].segment_count;
		state->layer_c_nb_seg = c->layer[2].segment_count;
	}

	/* WRITE: Mode & Diff mask */
	FUNC10(state, 0, (state->mode << 13) | state->seg_diff_mask);

	state->differential_constellation = (state->seg_diff_mask != 0);

	/* channel estimation fine configuration */
	ana_gain = FUNC0(state, max_constellation);

	/* update ana_gain depending on max constellation */
	FUNC9(state, ana_gain);

	/* ---- ANA_FE ---- */
	if (c->isdbt_partial_reception) /* 3-segments */
		FUNC2(state, ana_fe_coeff_3seg);
	else
		FUNC2(state, ana_fe_coeff_1seg); /* 1-segment */

	/* TSB or ISDBT ? apply it now */
	if (c->isdbt_sb_mode) {
		FUNC6(state);
		if (c->isdbt_sb_subchannel < 14)
			init_prbs = FUNC1(state, c->isdbt_sb_subchannel);
		else
			init_prbs = 0;
	} else {
		FUNC4(state);
		init_prbs = 0xfff;
	}

	/* SMALL */
	FUNC8(state);

	FUNC7(state, init_prbs);

	/* ---- CHAN_BLK ---- */
	for (i = 0; i < 13; i++) {
		if ((((~state->seg_diff_mask) >> i) & 1) == 1) {
			p_cfr_left_edge  += (1 << i) * ((i == 0) || ((((state->seg_mask & (~state->seg_diff_mask)) >> (i - 1)) & 1) == 0));
			p_cfr_right_edge += (1 << i) * ((i == 12) || ((((state->seg_mask & (~state->seg_diff_mask)) >> (i + 1)) & 1) == 0));
		}
	}
	FUNC10(state, 222, p_cfr_left_edge); /* p_cfr_left_edge */
	FUNC10(state, 223, p_cfr_right_edge); /* p_cfr_right_edge */
	/* "P_cspu_left_edge" & "P_cspu_right_edge" not used => do not care */

	FUNC10(state, 189, ~state->seg_mask | state->seg_diff_mask); /* P_lmod4_seg_inh */
	FUNC10(state, 192, ~state->seg_mask | state->seg_diff_mask); /* P_pha3_seg_inh */
	FUNC10(state, 225, ~state->seg_mask | state->seg_diff_mask); /* P_tac_seg_inh */

	if (!autosearching)
		FUNC10(state, 288, (~state->seg_mask | state->seg_diff_mask) & 0x1fff); /* P_tmcc_seg_eq_inh */
	else
		FUNC10(state, 288, 0x1fff); /*disable equalisation of the tmcc when autosearch to be able to find the DQPSK channels. */

	FUNC10(state, 211, state->seg_mask & (~state->seg_diff_mask)); /* P_des_seg_enabled */
	FUNC10(state, 287, ~state->seg_mask | 0x1000); /* P_tmcc_seg_inh */

	FUNC10(state, 178, 32); /* P_fft_powrange = 32 */

	/* ---- TMCC ---- */
	for (i = 0; i < 3; i++)
		tmcc_pow += (((c->layer[i].modulation == DQPSK) * 4 + 1) * c->layer[i].segment_count) ;

	/* Quantif of "P_tmcc_dec_thres_?k" is (0, 5+mode, 9); */
	/* Threshold is set at 1/4 of max power. */
	tmcc_pow *= (1 << (9-2));
	FUNC10(state, 290, tmcc_pow); /* P_tmcc_dec_thres_2k */
	FUNC10(state, 291, tmcc_pow); /* P_tmcc_dec_thres_4k */
	FUNC10(state, 292, tmcc_pow); /* P_tmcc_dec_thres_8k */
	/*dib8000_write_word(state, 287, (1 << 13) | 0x1000 ); */

	/* ---- PHA3 ---- */
	if (state->isdbt_cfg_loaded == 0)
		FUNC10(state, 250, 3285); /* p_2d_hspeed_thr0 */

	state->isdbt_cfg_loaded = 0;
}