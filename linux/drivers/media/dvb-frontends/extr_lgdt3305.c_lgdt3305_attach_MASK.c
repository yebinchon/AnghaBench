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
typedef  int u8 ;
struct dvb_frontend {struct lgdt3305_state* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct lgdt3305_state {int current_frequency; int current_modulation; struct dvb_frontend frontend; struct i2c_adapter* i2c_adap; struct lgdt3305_config const* cfg; } ;
struct lgdt3305_config {int demod_chip; int /*<<< orphan*/  i2c_addr; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  LGDT3304 129 
#define  LGDT3305 128 
 int LGDT3305_GEN_CTRL_2 ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct lgdt3305_state*) ; 
 struct lgdt3305_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  lgdt3304_ops ; 
 int /*<<< orphan*/  lgdt3305_ops ; 
 int FUNC6 (struct lgdt3305_state*,int,int*) ; 
 int FUNC7 (struct lgdt3305_state*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

struct dvb_frontend *FUNC9(const struct lgdt3305_config *config,
				     struct i2c_adapter *i2c_adap)
{
	struct lgdt3305_state *state = NULL;
	int ret;
	u8 val;

	FUNC3("(%d-%04x)\n",
	       i2c_adap ? FUNC0(i2c_adap) : 0,
	       config ? config->i2c_addr : 0);

	state = FUNC2(sizeof(struct lgdt3305_state), GFP_KERNEL);
	if (state == NULL)
		goto fail;

	state->cfg = config;
	state->i2c_adap = i2c_adap;

	switch (config->demod_chip) {
	case LGDT3304:
		FUNC8(&state->frontend.ops, &lgdt3304_ops,
		       sizeof(struct dvb_frontend_ops));
		break;
	case LGDT3305:
		FUNC8(&state->frontend.ops, &lgdt3305_ops,
		       sizeof(struct dvb_frontend_ops));
		break;
	default:
		goto fail;
	}
	state->frontend.demodulator_priv = state;

	/* verify that we're talking to a lg dt3304/5 */
	ret = FUNC6(state, LGDT3305_GEN_CTRL_2, &val);
	if ((FUNC4(ret)) | (val == 0))
		goto fail;
	ret = FUNC7(state, 0x0808, 0x80);
	if (FUNC4(ret))
		goto fail;
	ret = FUNC6(state, 0x0808, &val);
	if ((FUNC4(ret)) | (val != 0x80))
		goto fail;
	ret = FUNC7(state, 0x0808, 0x00);
	if (FUNC4(ret))
		goto fail;

	state->current_frequency = -1;
	state->current_modulation = -1;

	return &state->frontend;
fail:
	FUNC5("unable to detect %s hardware\n",
		config->demod_chip ? "LGDT3304" : "LGDT3305");
	FUNC1(state);
	return NULL;
}