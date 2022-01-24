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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int IF; scalar_t__ (* osc_deviation ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct drxd_state {int init_done; long expected_sys_clock_freq; int microcode_length; int /*<<< orphan*/  drxd_state; int /*<<< orphan*/  cscd_state; int /*<<< orphan*/  rf_agc_cfg; int /*<<< orphan*/  if_agc_cfg; int /*<<< orphan*/  m_FeAgRegAgAgcSio; int /*<<< orphan*/  m_FeAgRegAgPwd; scalar_t__ PGA; int /*<<< orphan*/  const* microcode; scalar_t__ type_A; scalar_t__ sys_clock_freq; scalar_t__ osc_clock_deviation; int /*<<< orphan*/  priv; TYPE_1__ config; scalar_t__ m_HiI2cPatch; int /*<<< orphan*/  operation_mode; } ;
typedef  long s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drxd_state*,int) ; 
 int /*<<< orphan*/  CSCD_INIT ; 
 int /*<<< orphan*/  DRXD_DEF_AG_AGC_SIO ; 
 int /*<<< orphan*/  DRXD_DEF_AG_PWD_CONSUMER ; 
 int /*<<< orphan*/  DRXD_DEF_AG_PWD_PRO ; 
 int /*<<< orphan*/  DRXD_STOPPED ; 
 int FUNC1 (struct drxd_state*,int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (struct drxd_state*) ; 
 int FUNC3 (struct drxd_state*) ; 
 int FUNC4 (struct drxd_state*) ; 
 int FUNC5 (struct drxd_state*) ; 
 int FUNC6 (struct drxd_state*) ; 
 int FUNC7 (struct drxd_state*) ; 
 int FUNC8 (struct drxd_state*) ; 
 int FUNC9 (struct drxd_state*) ; 
 int FUNC10 (struct drxd_state*) ; 
 int FUNC11 (struct drxd_state*) ; 
 int FUNC12 (struct drxd_state*) ; 
 int FUNC13 (struct drxd_state*) ; 
 int LC_COMM_EXEC__A ; 
 int /*<<< orphan*/  OM_Default ; 
 int FUNC14 (struct drxd_state*) ; 
 int SC_COMM_EXEC_CTL_STOP ; 
 int SC_COMM_EXEC__A ; 
 int /*<<< orphan*/  SC_RA_RAM_DRIVER_VERSION__AX ; 
 int FUNC15 (struct drxd_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct drxd_state*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct drxd_state*,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct drxd_state*) ; 
 int FUNC19 (struct drxd_state*) ; 
 int FUNC20 (struct drxd_state*) ; 
 int VERSION_MAJOR ; 
 int VERSION_MINOR ; 
 int VERSION_PATCH ; 
 int FUNC21 (struct drxd_state*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct drxd_state*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct drxd_state*,scalar_t__) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct drxd_state *state, const u8 *fw, u32 fw_size)
{
	int status = 0;
	u32 driverVersion;

	if (state->init_done)
		return 0;

	FUNC0(state, state->config.IF ? state->config.IF : 36000000);

	do {
		state->operation_mode = OM_Default;

		status = FUNC18(state);
		if (status < 0)
			break;

		/* Apply I2c address patch to B1 */
		if (!state->type_A && state->m_HiI2cPatch) {
			status = FUNC23(state, state->m_HiI2cPatch);
			if (status < 0)
				break;
		}

		if (state->type_A) {
			/* HI firmware patch for UIO readout,
			   avoid clearing of result register */
			status = FUNC21(state, 0x43012D, 0x047f, 0);
			if (status < 0)
				break;
		}

		status = FUNC3(state);
		if (status < 0)
			break;

		status = FUNC19(state);
		if (status < 0)
			break;
		status = FUNC5(state);
		if (status < 0)
			break;

		state->osc_clock_deviation = 0;

		if (state->config.osc_deviation)
			state->osc_clock_deviation =
			    state->config.osc_deviation(state->priv, 0, 0);
		{
			/* Handle clock deviation */
			s32 devB;
			s32 devA = (s32) (state->osc_clock_deviation) *
			    (s32) (state->expected_sys_clock_freq);
			/* deviation in kHz */
			s32 deviation = (devA / (1000000L));
			/* rounding, signed */
			if (devA > 0)
				devB = (2);
			else
				devB = (-2);
			if ((devB * (devA % 1000000L) > 1000000L)) {
				/* add +1 or -1 */
				deviation += (devB / 2);
			}

			state->sys_clock_freq =
			    (u16) ((state->expected_sys_clock_freq) +
				   deviation);
		}
		status = FUNC12(state);
		if (status < 0)
			break;
		status = FUNC4(state);
		if (status < 0)
			break;

		status = FUNC2(state);
		if (status < 0)
			break;
		if (state->type_A) {
			status = FUNC14(state);
			if (status < 0)
				break;
		}
		if (fw) {
			status = FUNC1(state, fw, fw_size);
			if (status < 0)
				break;
		} else {
			status = FUNC1(state, state->microcode, state->microcode_length);
			if (status < 0)
				break;
		}

		if (state->PGA) {
			state->m_FeAgRegAgPwd = DRXD_DEF_AG_PWD_PRO;
			FUNC16(state, 0);	/* PGA = 0 dB */
		} else {
			state->m_FeAgRegAgPwd = DRXD_DEF_AG_PWD_CONSUMER;
		}

		state->m_FeAgRegAgAgcSio = DRXD_DEF_AG_AGC_SIO;

		status = FUNC10(state);
		if (status < 0)
			break;
		status = FUNC11(state);
		if (status < 0)
			break;
		status = FUNC7(state);
		if (status < 0)
			break;
		status = FUNC6(state);
		if (status < 0)
			break;
		status = FUNC9(state);
		if (status < 0)
			break;
		status = FUNC8(state);
		if (status < 0)
			break;
		status = FUNC13(state);
		if (status < 0)
			break;

		status = FUNC15(state, &state->if_agc_cfg);
		if (status < 0)
			break;
		status = FUNC17(state, &state->rf_agc_cfg);
		if (status < 0)
			break;

		state->cscd_state = CSCD_INIT;
		status = FUNC21(state, SC_COMM_EXEC__A, SC_COMM_EXEC_CTL_STOP, 0);
		if (status < 0)
			break;
		status = FUNC21(state, LC_COMM_EXEC__A, SC_COMM_EXEC_CTL_STOP, 0);
		if (status < 0)
			break;

		driverVersion = (((VERSION_MAJOR / 10) << 4) +
				 (VERSION_MAJOR % 10)) << 24;
		driverVersion += (((VERSION_MINOR / 10) << 4) +
				  (VERSION_MINOR % 10)) << 16;
		driverVersion += ((VERSION_PATCH / 1000) << 12) +
		    ((VERSION_PATCH / 100) << 8) +
		    ((VERSION_PATCH / 10) << 4) + (VERSION_PATCH % 10);

		status = FUNC22(state, SC_RA_RAM_DRIVER_VERSION__AX, driverVersion, 0);
		if (status < 0)
			break;

		status = FUNC20(state);
		if (status < 0)
			break;

		state->drxd_state = DRXD_STOPPED;
		state->init_done = 1;
		status = 0;
	} while (0);
	return status;
}