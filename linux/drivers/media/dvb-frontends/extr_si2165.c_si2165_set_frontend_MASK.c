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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct si2165_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {int delivery_system; } ;
struct dvb_frontend {TYPE_2__ ops; struct dtv_frontend_properties dtv_property_cache; struct si2165_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  REG_ADDR_JUMP ; 
 int /*<<< orphan*/  REG_GP_REG0_LSB ; 
 int /*<<< orphan*/  REG_RST_ALL ; 
 int /*<<< orphan*/  REG_START_SYNCHRO ; 
 int /*<<< orphan*/  REG_WDOG_AND_BOOT ; 
#define  SYS_DVBC_ANNEX_A 129 
#define  SYS_DVBT 128 
 int /*<<< orphan*/  adc_rewrite ; 
 int FUNC1 (struct si2165_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct dvb_frontend*) ; 
 int FUNC3 (struct dvb_frontend*) ; 
 int FUNC4 (struct si2165_state*) ; 
 int FUNC5 (struct si2165_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct si2165_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct si2165_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dvb_frontend*) ; 

__attribute__((used)) static int FUNC9(struct dvb_frontend *fe)
{
	struct si2165_state *state = fe->demodulator_priv;
	struct dtv_frontend_properties *p = &fe->dtv_property_cache;
	u32 delsys = p->delivery_system;
	int ret;
	u8 val[3];

	/* initial setting of if freq shift */
	ret = FUNC4(state);
	if (ret < 0)
		return ret;

	switch (delsys) {
	case SYS_DVBT:
		ret = FUNC3(fe);
		if (ret < 0)
			return ret;
		break;
	case SYS_DVBC_ANNEX_A:
		ret = FUNC2(fe);
		if (ret < 0)
			return ret;
		break;
	default:
		return -EINVAL;
	}

	/* dsp_addr_jump */
	ret = FUNC6(state, REG_ADDR_JUMP, 0xf4000000);
	if (ret < 0)
		return ret;

	if (fe->ops.tuner_ops.set_params)
		fe->ops.tuner_ops.set_params(fe);

	/* recalc if_freq_shift if IF might has changed */
	ret = FUNC4(state);
	if (ret < 0)
		return ret;

	/* boot/wdog status */
	ret = FUNC1(state, REG_WDOG_AND_BOOT, val);
	if (ret < 0)
		return ret;
	ret = FUNC7(state, REG_WDOG_AND_BOOT, 0x00);
	if (ret < 0)
		return ret;

	/* reset all */
	ret = FUNC7(state, REG_RST_ALL, 0x00);
	if (ret < 0)
		return ret;
	/* gp_reg0 */
	ret = FUNC6(state, REG_GP_REG0_LSB, 0x00000000);
	if (ret < 0)
		return ret;

	/* write adc values after each reset*/
	ret = FUNC5(state, adc_rewrite,
				    FUNC0(adc_rewrite));
	if (ret < 0)
		return ret;

	/* start_synchro */
	ret = FUNC7(state, REG_START_SYNCHRO, 0x01);
	if (ret < 0)
		return ret;
	/* boot/wdog status */
	ret = FUNC1(state, REG_WDOG_AND_BOOT, val);
	if (ret < 0)
		return ret;

	return 0;
}