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
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ info; } ;
struct dvb_frontend {TYPE_2__ ops; struct stv_base* demodulator_priv; } ;
struct stv_base {int tscfgh; int tsgeneral; int i2crpt; int tsspeed; int nr; int regoff; int search_range; int demod_bits; unsigned int cur_scrambling_code; int single; int count; int extclk; struct dvb_frontend fe; int /*<<< orphan*/  stvlist; struct stv_base* base; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  i2c_lock; int /*<<< orphan*/  adr; struct i2c_adapter* i2c; int /*<<< orphan*/  receive_mode; } ;
struct stv0910_cfg {int parallel; int rptlvl; int tsspeed; int clk; int /*<<< orphan*/  adr; scalar_t__ single; } ;
struct stv {int tscfgh; int tsgeneral; int i2crpt; int tsspeed; int nr; int regoff; int search_range; int demod_bits; unsigned int cur_scrambling_code; int single; int count; int extclk; struct dvb_frontend fe; int /*<<< orphan*/  stvlist; struct stv* base; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  i2c_lock; int /*<<< orphan*/  adr; struct i2c_adapter* i2c; int /*<<< orphan*/  receive_mode; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RCVMODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct stv_base*) ; 
 struct stv_base* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct stv_base* FUNC5 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct stv_base*) ; 
 int /*<<< orphan*/  FUNC8 (struct stv_base*) ; 
 TYPE_2__ stv0910_ops ; 
 int /*<<< orphan*/  stvlist ; 

struct dvb_frontend *FUNC9(struct i2c_adapter *i2c,
				    struct stv0910_cfg *cfg,
				    int nr)
{
	struct stv *state;
	struct stv_base *base;

	state = FUNC3(sizeof(*state), GFP_KERNEL);
	if (!state)
		return NULL;

	state->tscfgh = 0x20 | (cfg->parallel ? 0 : 0x40);
	state->tsgeneral = (cfg->parallel == 2) ? 0x02 : 0x00;
	state->i2crpt = 0x0A | ((cfg->rptlvl & 0x07) << 4);
	/* use safe tsspeed value if unspecified through stv0910_cfg */
	state->tsspeed = (cfg->tsspeed ? cfg->tsspeed : 0x28);
	state->nr = nr;
	state->regoff = state->nr ? 0 : 0x200;
	state->search_range = 16000000;
	state->demod_bits = 0x10; /* Inversion : Auto with reset to 0 */
	state->receive_mode = RCVMODE_NONE;
	state->cur_scrambling_code = (~0U);
	state->single = cfg->single ? 1 : 0;

	base = FUNC5(i2c, cfg->adr);
	if (base) {
		base->count++;
		state->base = base;
	} else {
		base = FUNC3(sizeof(*base), GFP_KERNEL);
		if (!base)
			goto fail;
		base->i2c = i2c;
		base->adr = cfg->adr;
		base->count = 1;
		base->extclk = cfg->clk ? cfg->clk : 30000000;

		FUNC6(&base->i2c_lock);
		FUNC6(&base->reg_lock);
		state->base = base;
		if (FUNC7(state) < 0) {
			FUNC0(&i2c->dev, "No demod found at adr %02X on %s\n",
				 cfg->adr, FUNC1(&i2c->dev));
			FUNC2(base);
			goto fail;
		}
		FUNC4(&base->stvlist, &stvlist);
	}
	state->fe.ops = stv0910_ops;
	state->fe.demodulator_priv = state;
	state->nr = nr;

	FUNC0(&i2c->dev, "%s demod found at adr %02X on %s\n",
		 state->fe.ops.info.name, cfg->adr, FUNC1(&i2c->dev));

	FUNC8(state);

	return &state->fe;

fail:
	FUNC2(state);
	return NULL;
}