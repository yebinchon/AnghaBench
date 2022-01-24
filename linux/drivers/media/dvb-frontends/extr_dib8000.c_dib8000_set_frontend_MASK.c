#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct dvb_frontend {int /*<<< orphan*/  dtv_property_cache; struct dib8000_state* demodulator_priv; } ;
struct dtv_frontend_properties {scalar_t__ frequency; int bandwidth_hz; TYPE_3__* layer; int /*<<< orphan*/  isdbt_partial_reception; int /*<<< orphan*/  guard_interval; int /*<<< orphan*/  transmission_mode; int /*<<< orphan*/  inversion; int /*<<< orphan*/  isdbt_sb_mode; int /*<<< orphan*/  delivery_system; } ;
struct TYPE_20__ {scalar_t__ enMpegOutput; int /*<<< orphan*/  output_mode; } ;
struct dib8000_state {int revision; int channel_parameters_set; TYPE_4__ cfg; TYPE_5__** fe; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* set_params ) (TYPE_5__*) ;} ;
struct TYPE_18__ {TYPE_1__ tuner_ops; } ;
struct TYPE_21__ {struct dtv_frontend_properties dtv_property_cache; TYPE_2__ ops; } ;
struct TYPE_19__ {int /*<<< orphan*/  modulation; int /*<<< orphan*/  fec; int /*<<< orphan*/  interleaving; int /*<<< orphan*/  segment_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CT_AGC_START ; 
 scalar_t__ CT_AGC_STOP ; 
 int /*<<< orphan*/  CT_DEMOD_START ; 
 scalar_t__ CT_DEMOD_STOP ; 
 int /*<<< orphan*/  DIBTX_ON_HOSTBUS ; 
 int /*<<< orphan*/  FE_STATUS_DATA_LOCKED ; 
 int /*<<< orphan*/  FE_STATUS_DEMOD_SUCCESS ; 
 int /*<<< orphan*/  FE_STATUS_FFT_SUCCESS ; 
 int /*<<< orphan*/  FE_STATUS_LOCKED ; 
 int /*<<< orphan*/  FE_STATUS_TUNE_FAILED ; 
 size_t MAX_NUMBER_OF_FRONTENDS ; 
 int /*<<< orphan*/  MPEG_ON_DIBTX ; 
 int /*<<< orphan*/  OUTMODE_DIVERSITY ; 
 int /*<<< orphan*/  OUTMODE_HIGH_Z ; 
 int /*<<< orphan*/  SYS_ISDBT ; 
 int FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,struct dtv_frontend_properties*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (struct dib8000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dib8000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC14 (struct dtv_frontend_properties*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 scalar_t__ FUNC17 (unsigned long,unsigned long) ; 
 unsigned long FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int,int) ; 

__attribute__((used)) static int FUNC20(struct dvb_frontend *fe)
{
	struct dib8000_state *state = fe->demodulator_priv;
	struct dtv_frontend_properties *c = &state->fe[0]->dtv_property_cache;
	int l, i, active, time, time_slave = 0;
	u8 exit_condition, index_frontend;
	unsigned long delay, callback_time;

	if (c->frequency == 0) {
		FUNC13("dib8000: must at least specify frequency\n");
		return 0;
	}

	if (c->bandwidth_hz == 0) {
		FUNC13("dib8000: no bandwidth specified, set to default\n");
		c->bandwidth_hz = 6000000;
	}

	for (index_frontend = 0; (index_frontend < MAX_NUMBER_OF_FRONTENDS) && (state->fe[index_frontend] != NULL); index_frontend++) {
		/* synchronization of the cache */
		state->fe[index_frontend]->dtv_property_cache.delivery_system = SYS_ISDBT;
		FUNC14(&state->fe[index_frontend]->dtv_property_cache, &fe->dtv_property_cache, sizeof(struct dtv_frontend_properties));

		/* set output mode and diversity input */
		if (state->revision != 0x8090) {
			FUNC4(state->fe[index_frontend], 1);
			if (index_frontend != 0)
				FUNC5(state->fe[index_frontend],
						OUTMODE_DIVERSITY);
			else
				FUNC5(state->fe[0], OUTMODE_HIGH_Z);
		} else {
			FUNC11(state->fe[index_frontend], 1);
			if (index_frontend != 0)
				FUNC12(state->fe[index_frontend],
						OUTMODE_DIVERSITY);
			else
				FUNC12(state->fe[0], OUTMODE_HIGH_Z);
		}

		/* tune the tuner */
		if (state->fe[index_frontend]->ops.tuner_ops.set_params)
			state->fe[index_frontend]->ops.tuner_ops.set_params(state->fe[index_frontend]);

		FUNC6(state->fe[index_frontend], CT_AGC_START);
	}

	/* turn off the diversity of the last chip */
	if (state->revision != 0x8090)
		FUNC4(state->fe[index_frontend - 1], 0);
	else
		FUNC11(state->fe[index_frontend - 1], 0);

	/* start up the AGC */
	do {
		time = FUNC0(state->fe[0]);
		for (index_frontend = 1; (index_frontend < MAX_NUMBER_OF_FRONTENDS) && (state->fe[index_frontend] != NULL); index_frontend++) {
			time_slave = FUNC0(state->fe[index_frontend]);
			if (time == 0)
				time = time_slave;
			else if ((time_slave != 0) && (time_slave > time))
				time = time_slave;
		}
		if (time == 0)
			break;

		/*
		 * Despite dib8000_agc_startup returns time at a 0.1 ms range,
		 * the actual sleep time depends on CONFIG_HZ. The worse case
		 * is when CONFIG_HZ=100. In such case, the minimum granularity
		 * is 10ms. On some real field tests, the tuner sometimes don't
		 * lock when this timer is lower than 10ms. So, enforce a 10ms
		 * granularity.
		 */
		time = 10 * (time + 99)/100;
		FUNC19(time * 1000, (time + 1) * 1000);
		exit_condition = 1;
		for (index_frontend = 0; (index_frontend < MAX_NUMBER_OF_FRONTENDS) && (state->fe[index_frontend] != NULL); index_frontend++) {
			if (FUNC3(state->fe[index_frontend]) != CT_AGC_STOP) {
				exit_condition = 0;
				break;
			}
		}
	} while (exit_condition == 0);

	for (index_frontend = 0; (index_frontend < MAX_NUMBER_OF_FRONTENDS) && (state->fe[index_frontend] != NULL); index_frontend++)
		FUNC6(state->fe[index_frontend], CT_DEMOD_START);

	active = 1;
	do {
		callback_time = 0;
		for (index_frontend = 0; (index_frontend < MAX_NUMBER_OF_FRONTENDS) && (state->fe[index_frontend] != NULL); index_frontend++) {
			delay = FUNC7(state->fe[index_frontend]);
			if (delay != 0) {
				delay = jiffies + FUNC18(100 * delay);
				if (!callback_time || delay < callback_time)
					callback_time = delay;
			}

			/* we are in autosearch */
			if (state->channel_parameters_set == 0) { /* searching */
				if ((FUNC2(state->fe[index_frontend]) == FE_STATUS_DEMOD_SUCCESS) || (FUNC2(state->fe[index_frontend]) == FE_STATUS_FFT_SUCCESS)) {
					FUNC13("autosearch succeeded on fe%i\n", index_frontend);
					FUNC1(state->fe[index_frontend], c); /* we read the channel parameters from the frontend which was successful */
					state->channel_parameters_set = 1;

					for (l = 0; (l < MAX_NUMBER_OF_FRONTENDS) && (state->fe[l] != NULL); l++) {
						if (l != index_frontend) { /* and for all frontend except the successful one */
							FUNC13("Restarting frontend %d\n", l);
							FUNC8(state->fe[l]);

							state->fe[l]->dtv_property_cache.isdbt_sb_mode = state->fe[index_frontend]->dtv_property_cache.isdbt_sb_mode;
							state->fe[l]->dtv_property_cache.inversion = state->fe[index_frontend]->dtv_property_cache.inversion;
							state->fe[l]->dtv_property_cache.transmission_mode = state->fe[index_frontend]->dtv_property_cache.transmission_mode;
							state->fe[l]->dtv_property_cache.guard_interval = state->fe[index_frontend]->dtv_property_cache.guard_interval;
							state->fe[l]->dtv_property_cache.isdbt_partial_reception = state->fe[index_frontend]->dtv_property_cache.isdbt_partial_reception;
							for (i = 0; i < 3; i++) {
								state->fe[l]->dtv_property_cache.layer[i].segment_count = state->fe[index_frontend]->dtv_property_cache.layer[i].segment_count;
								state->fe[l]->dtv_property_cache.layer[i].interleaving = state->fe[index_frontend]->dtv_property_cache.layer[i].interleaving;
								state->fe[l]->dtv_property_cache.layer[i].fec = state->fe[index_frontend]->dtv_property_cache.layer[i].fec;
								state->fe[l]->dtv_property_cache.layer[i].modulation = state->fe[index_frontend]->dtv_property_cache.layer[i].modulation;
							}

						}
					}
				}
			}
		}
		/* tuning is done when the master frontend is done (failed or success) */
		if (FUNC2(state->fe[0]) == FE_STATUS_TUNE_FAILED ||
				FUNC2(state->fe[0]) == FE_STATUS_LOCKED ||
				FUNC2(state->fe[0]) == FE_STATUS_DATA_LOCKED) {
			active = 0;
			/* we need to wait for all frontends to be finished */
			for (index_frontend = 0; (index_frontend < MAX_NUMBER_OF_FRONTENDS) && (state->fe[index_frontend] != NULL); index_frontend++) {
				if (FUNC3(state->fe[index_frontend]) != CT_DEMOD_STOP)
					active = 1;
			}
			if (active == 0)
				FUNC13("tuning done with status %d\n", FUNC2(state->fe[0]));
		}

		if ((active == 1) && (callback_time == 0)) {
			FUNC13("strange callback time something went wrong\n");
			active = 0;
		}

		while ((active == 1) && (FUNC17(jiffies, callback_time)))
			FUNC15(100);
	} while (active);

	/* set output mode */
	if (state->revision != 0x8090)
		FUNC5(state->fe[0], state->cfg.output_mode);
	else {
		FUNC12(state->fe[0], state->cfg.output_mode);
		if (state->cfg.enMpegOutput == 0) {
			FUNC9(state, MPEG_ON_DIBTX);
			FUNC10(state, DIBTX_ON_HOSTBUS);
		}
	}

	return 0;
}