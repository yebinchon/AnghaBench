#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct i2c_adapter {TYPE_3__ dev; } ;
struct dvb_frontend_ops {int dummy; } ;
struct TYPE_11__ {scalar_t__ output_mode; } ;
struct dvb_frontend {TYPE_4__ ops; struct dib8000_state* demodulator_priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct TYPE_12__ {TYPE_2__ dev; int /*<<< orphan*/ * algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; } ;
struct TYPE_13__ {struct i2c_adapter* adap; int /*<<< orphan*/  addr; int /*<<< orphan*/ * i2c_buffer_lock; int /*<<< orphan*/  i2c_read_buffer; int /*<<< orphan*/  i2c_write_buffer; } ;
struct dib8000_state {int current_demod_bw; TYPE_5__ dib8096p_tuner_adap; TYPE_7__ i2c; int /*<<< orphan*/  i2c_master; int /*<<< orphan*/  timf_default; struct dvb_frontend** fe; TYPE_4__ cfg; int /*<<< orphan*/  gpio_dir; int /*<<< orphan*/  gpio_val; int /*<<< orphan*/  i2c_buffer_lock; int /*<<< orphan*/  i2c_read_buffer; int /*<<< orphan*/  i2c_write_buffer; } ;
struct dib8000_config {TYPE_1__* pll; int /*<<< orphan*/  gpio_dir; int /*<<< orphan*/  gpio_val; } ;
struct TYPE_8__ {int /*<<< orphan*/  timf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB8000 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ OUTMODE_MPEG2_FIFO ; 
 scalar_t__ OUTMODE_MPEG2_PAR_GATED_CLK ; 
 scalar_t__ OUTMODE_MPEG2_SERIAL ; 
 scalar_t__ FUNC0 (TYPE_7__*) ; 
 struct dib8000_config dib8000_ops ; 
 int FUNC1 (struct dib8000_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC3 (struct dib8000_state*,int,int) ; 
 int /*<<< orphan*/  dib8096p_tuner_xfer_algo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,struct dib8000_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct dib8000_state*) ; 
 void* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,struct dib8000_config*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct dvb_frontend *FUNC13(struct i2c_adapter *i2c_adap, u8 i2c_addr, struct dib8000_config *cfg)
{
	struct dvb_frontend *fe;
	struct dib8000_state *state;

	FUNC5("dib8000_init\n");

	state = FUNC9(sizeof(struct dib8000_state), GFP_KERNEL);
	if (state == NULL)
		return NULL;
	fe = FUNC9(sizeof(struct dvb_frontend), GFP_KERNEL);
	if (fe == NULL)
		goto error;

	FUNC10(&state->cfg, cfg, sizeof(struct dib8000_config));
	state->i2c.adap = i2c_adap;
	state->i2c.addr = i2c_addr;
	state->i2c.i2c_write_buffer = state->i2c_write_buffer;
	state->i2c.i2c_read_buffer = state->i2c_read_buffer;
	FUNC11(&state->i2c_buffer_lock);
	state->i2c.i2c_buffer_lock = &state->i2c_buffer_lock;
	state->gpio_val = cfg->gpio_val;
	state->gpio_dir = cfg->gpio_dir;

	/* Ensure the output mode remains at the previous default if it's
	 * not specifically set by the caller.
	 */
	if ((state->cfg.output_mode != OUTMODE_MPEG2_SERIAL) && (state->cfg.output_mode != OUTMODE_MPEG2_PAR_GATED_CLK))
		state->cfg.output_mode = OUTMODE_MPEG2_FIFO;

	state->fe[0] = fe;
	fe->demodulator_priv = state;
	FUNC10(&state->fe[0]->ops, &dib8000_ops, sizeof(struct dvb_frontend_ops));

	state->timf_default = cfg->pll->timf;

	if (FUNC0(&state->i2c) == 0)
		goto error;

	FUNC4(&state->i2c_master, DIB8000, state->i2c.adap, state->i2c.addr);

	/* init 8096p tuner adapter */
	FUNC12(state->dib8096p_tuner_adap.name, "DiB8096P tuner interface",
		sizeof(state->dib8096p_tuner_adap.name));
	state->dib8096p_tuner_adap.algo = &dib8096p_tuner_xfer_algo;
	state->dib8096p_tuner_adap.algo_data = NULL;
	state->dib8096p_tuner_adap.dev.parent = state->i2c.adap->dev.parent;
	FUNC7(&state->dib8096p_tuner_adap, state);
	FUNC6(&state->dib8096p_tuner_adap);

	FUNC2(fe);

	FUNC3(state, 285, (FUNC1(state, 285) & ~0x60) | (3 << 5));	/* ber_rs_len = 3 */
	state->current_demod_bw = 6000;

	return fe;

error:
	FUNC8(state);
	return NULL;
}