#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_12__ {int /*<<< orphan*/  parent; } ;
struct i2c_adapter {TYPE_4__ dev; } ;
struct dvb_frontend_ops {int dummy; } ;
struct TYPE_13__ {scalar_t__ output_mode; } ;
struct dvb_frontend {TYPE_5__ ops; struct dib7000p_state* demodulator_priv; } ;
struct TYPE_11__ {int /*<<< orphan*/  parent; } ;
struct TYPE_14__ {TYPE_3__ dev; int /*<<< orphan*/ * algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct TYPE_10__ {TYPE_1__ dev; } ;
struct TYPE_15__ {TYPE_2__ gated_tuner_i2c_adap; } ;
struct dib7000p_state {scalar_t__ version; TYPE_5__ cfg; TYPE_6__ dib7090_tuner_adap; struct i2c_adapter* i2c_adap; int /*<<< orphan*/  i2c_addr; TYPE_8__ i2c_master; int /*<<< orphan*/  i2c_buffer_lock; struct dvb_frontend demod; int /*<<< orphan*/  gpio_dir; int /*<<< orphan*/  gpio_val; } ;
struct dib7000p_config {int /*<<< orphan*/  gpio_dir; int /*<<< orphan*/  gpio_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB7000P ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ OUTMODE_MPEG2_FIFO ; 
 scalar_t__ OUTMODE_MPEG2_PAR_GATED_CLK ; 
 scalar_t__ OUTMODE_MPEG2_SERIAL ; 
 scalar_t__ SOC7090 ; 
 int /*<<< orphan*/  FUNC0 (struct dib7000p_state*) ; 
 scalar_t__ FUNC1 (struct dib7000p_state*) ; 
 struct dib7000p_config dib7000p_ops ; 
 scalar_t__ FUNC2 (struct dib7000p_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC4 (struct dib7000p_state*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_frontend*,scalar_t__) ; 
 int /*<<< orphan*/  dib7090_tuner_xfer_algo ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,int /*<<< orphan*/ ,struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,struct dib7000p_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct dib7000p_state*) ; 
 struct dib7000p_state* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,struct dib7000p_config*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct dvb_frontend *FUNC15(struct i2c_adapter *i2c_adap, u8 i2c_addr, struct dib7000p_config *cfg)
{
	struct dvb_frontend *demod;
	struct dib7000p_state *st;
	st = FUNC11(sizeof(struct dib7000p_state), GFP_KERNEL);
	if (st == NULL)
		return NULL;

	FUNC12(&st->cfg, cfg, sizeof(struct dib7000p_config));
	st->i2c_adap = i2c_adap;
	st->i2c_addr = i2c_addr;
	st->gpio_val = cfg->gpio_val;
	st->gpio_dir = cfg->gpio_dir;

	/* Ensure the output mode remains at the previous default if it's
	 * not specifically set by the caller.
	 */
	if ((st->cfg.output_mode != OUTMODE_MPEG2_SERIAL) && (st->cfg.output_mode != OUTMODE_MPEG2_PAR_GATED_CLK))
		st->cfg.output_mode = OUTMODE_MPEG2_FIFO;

	demod = &st->demod;
	demod->demodulator_priv = st;
	FUNC12(&st->demod.ops, &dib7000p_ops, sizeof(struct dvb_frontend_ops));
	FUNC13(&st->i2c_buffer_lock);

	FUNC4(st, 1287, 0x0003);	/* sram lead in, rdy */

	if (FUNC1(st) != 0)
		goto error;

	st->version = FUNC2(st, 897);

	/* FIXME: make sure the dev.parent field is initialized, or else
	   request_firmware() will hit an OOPS (this should be moved somewhere
	   more common) */
	st->i2c_master.gated_tuner_i2c_adap.dev.parent = i2c_adap->dev.parent;

	FUNC7(&st->i2c_master, DIB7000P, st->i2c_adap, st->i2c_addr);

	/* init 7090 tuner adapter */
	FUNC14(st->dib7090_tuner_adap.name, "DiB7090 tuner interface",
		sizeof(st->dib7090_tuner_adap.name));
	st->dib7090_tuner_adap.algo = &dib7090_tuner_xfer_algo;
	st->dib7090_tuner_adap.algo_data = NULL;
	st->dib7090_tuner_adap.dev.parent = st->i2c_adap->dev.parent;
	FUNC9(&st->dib7090_tuner_adap, st);
	FUNC8(&st->dib7090_tuner_adap);

	FUNC0(st);

	FUNC3(demod);

	if (st->version == SOC7090) {
		FUNC6(demod, st->cfg.output_mode);
		FUNC5(demod, 0);
	}

	return demod;

error:
	FUNC10(st);
	return NULL;
}