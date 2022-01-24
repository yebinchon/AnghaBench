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
typedef  int u32 ;
struct mxl {TYPE_1__* base; int /*<<< orphan*/  tuner; int /*<<< orphan*/  tuner_in_use; int /*<<< orphan*/  demod; } ;
struct dtv_frontend_properties {int frequency; int symbol_rate; int delivery_system; int /*<<< orphan*/  scrambling_sequence_index; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct mxl* demodulator_priv; } ;
struct MXL_HYDRA_DEMOD_PARAM_T {int frequency_in_hz; int symbol_rate_in_hz; int max_carrier_offset_in_mhz; int /*<<< orphan*/  fec_code_rate; int /*<<< orphan*/  spectrum_inversion; int /*<<< orphan*/  demod_index; int /*<<< orphan*/  tuner_index; int /*<<< orphan*/  pilots; int /*<<< orphan*/  modulation_scheme; void* roll_off; int /*<<< orphan*/  standard; } ;
typedef  int /*<<< orphan*/  demod_chan_cfg ;
struct TYPE_2__ {int /*<<< orphan*/  tune_lock; scalar_t__ next_tune; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct MXL_HYDRA_DEMOD_PARAM_T*,int*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MXL_CMD_WRITE ; 
 int MXL_HYDRA_CMD_HEADER_SIZE ; 
 int /*<<< orphan*/  MXL_HYDRA_DEMOD_SET_PARAM_CMD ; 
 int /*<<< orphan*/  MXL_HYDRA_DSS ; 
 int /*<<< orphan*/  MXL_HYDRA_DVBS ; 
 int /*<<< orphan*/  MXL_HYDRA_DVBS2 ; 
 int /*<<< orphan*/  MXL_HYDRA_FEC_AUTO ; 
 int /*<<< orphan*/  MXL_HYDRA_MOD_AUTO ; 
 int /*<<< orphan*/  MXL_HYDRA_MOD_QPSK ; 
 int MXL_HYDRA_OEM_MAX_CMD_BUFF_LEN ; 
 int /*<<< orphan*/  MXL_HYDRA_PILOTS_AUTO ; 
 int /*<<< orphan*/  MXL_HYDRA_PILOTS_OFF ; 
 void* MXL_HYDRA_ROLLOFF_0_35 ; 
 void* MXL_HYDRA_ROLLOFF_AUTO ; 
 int /*<<< orphan*/  MXL_HYDRA_SPECTRUM_AUTO ; 
#define  SYS_DSS 130 
#define  SYS_DVBS 129 
#define  SYS_DVBS2 128 
 int /*<<< orphan*/  FUNC1 (struct mxl*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mxl*,int,int*) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct dvb_frontend *fe)
{
	struct mxl *state = fe->demodulator_priv;
	struct dtv_frontend_properties *p = &fe->dtv_property_cache;
	struct MXL_HYDRA_DEMOD_PARAM_T demod_chan_cfg;
	u8 cmd_size = sizeof(demod_chan_cfg);
	u8 cmd_buff[MXL_HYDRA_OEM_MAX_CMD_BUFF_LEN];
	u32 srange = 10;
	int stat;

	if (p->frequency < 950000 || p->frequency > 2150000)
		return -EINVAL;
	if (p->symbol_rate < 1000000 || p->symbol_rate > 45000000)
		return -EINVAL;

	/* CfgDemodAbortTune(state); */

	switch (p->delivery_system) {
	case SYS_DSS:
		demod_chan_cfg.standard = MXL_HYDRA_DSS;
		demod_chan_cfg.roll_off = MXL_HYDRA_ROLLOFF_AUTO;
		break;
	case SYS_DVBS:
		srange = p->symbol_rate / 1000000;
		if (srange > 10)
			srange = 10;
		demod_chan_cfg.standard = MXL_HYDRA_DVBS;
		demod_chan_cfg.roll_off = MXL_HYDRA_ROLLOFF_0_35;
		demod_chan_cfg.modulation_scheme = MXL_HYDRA_MOD_QPSK;
		demod_chan_cfg.pilots = MXL_HYDRA_PILOTS_OFF;
		break;
	case SYS_DVBS2:
		demod_chan_cfg.standard = MXL_HYDRA_DVBS2;
		demod_chan_cfg.roll_off = MXL_HYDRA_ROLLOFF_AUTO;
		demod_chan_cfg.modulation_scheme = MXL_HYDRA_MOD_AUTO;
		demod_chan_cfg.pilots = MXL_HYDRA_PILOTS_AUTO;
		FUNC1(state, p->scrambling_sequence_index);
		break;
	default:
		return -EINVAL;
	}
	demod_chan_cfg.tuner_index = state->tuner;
	demod_chan_cfg.demod_index = state->demod;
	demod_chan_cfg.frequency_in_hz = p->frequency * 1000;
	demod_chan_cfg.symbol_rate_in_hz = p->symbol_rate;
	demod_chan_cfg.max_carrier_offset_in_mhz = srange;
	demod_chan_cfg.spectrum_inversion = MXL_HYDRA_SPECTRUM_AUTO;
	demod_chan_cfg.fec_code_rate = MXL_HYDRA_FEC_AUTO;

	FUNC3(&state->base->tune_lock);
	if (FUNC6(jiffies + FUNC2(200),
		       state->base->next_tune))
		while (FUNC7(jiffies, state->base->next_tune))
			FUNC8(10000, 11000);
	state->base->next_tune = jiffies + FUNC2(100);
	state->tuner_in_use = state->tuner;
	FUNC0(MXL_HYDRA_DEMOD_SET_PARAM_CMD, MXL_CMD_WRITE,
			cmd_size, &demod_chan_cfg, cmd_buff);
	stat = FUNC5(state, cmd_size + MXL_HYDRA_CMD_HEADER_SIZE,
			    &cmd_buff[0]);
	FUNC4(&state->base->tune_lock);
	return stat;
}