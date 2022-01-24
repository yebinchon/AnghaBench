#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_18__ {int /*<<< orphan*/  parent; } ;
struct i2c_adapter {TYPE_6__ dev; } ;
struct dvb_frontend_ops {int dummy; } ;
struct TYPE_19__ {scalar_t__ output_mode; } ;
struct dvb_frontend {TYPE_7__ ops; struct dib9000_state* demodulator_priv; } ;
struct TYPE_17__ {int /*<<< orphan*/  parent; } ;
struct TYPE_20__ {int /*<<< orphan*/ * algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; TYPE_5__ dev; } ;
struct TYPE_12__ {int /*<<< orphan*/  i2c_addr; struct i2c_adapter* i2c_adap; int /*<<< orphan*/  i2c_read_buffer; int /*<<< orphan*/  i2c_write_buffer; } ;
struct TYPE_15__ {TYPE_7__ cfg; } ;
struct TYPE_16__ {TYPE_3__ d9; } ;
struct TYPE_13__ {int /*<<< orphan*/  mem_mbx_lock; int /*<<< orphan*/  mem_lock; int /*<<< orphan*/  mbx_lock; int /*<<< orphan*/  mbx_if_lock; } ;
struct TYPE_14__ {TYPE_1__ risc; } ;
struct dib9000_state {int pid_ctrl_index; int component_bus_speed; TYPE_8__ tuner_adap; TYPE_8__ component_bus; TYPE_11__ i2c; int /*<<< orphan*/  i2c_master; TYPE_4__ chip; struct dvb_frontend** fe; scalar_t__ get_frontend_internal; int /*<<< orphan*/  demod_lock; TYPE_2__ platform; int /*<<< orphan*/  gpio_pwm_pos; int /*<<< orphan*/  gpio_val; int /*<<< orphan*/  gpio_dir; int /*<<< orphan*/  i2c_read_buffer; int /*<<< orphan*/  i2c_write_buffer; } ;
struct dib9000_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB7000MC ; 
 int /*<<< orphan*/  DIB9000_GPIO_DEFAULT_DIRECTIONS ; 
 int /*<<< orphan*/  DIB9000_GPIO_DEFAULT_PWM_POS ; 
 int /*<<< orphan*/  DIB9000_GPIO_DEFAULT_VALUES ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ OUTMODE_MPEG2_FIFO ; 
 scalar_t__ OUTMODE_MPEG2_PAR_GATED_CLK ; 
 scalar_t__ OUTMODE_MPEG2_SERIAL ; 
 int /*<<< orphan*/  dib9000_component_bus_algo ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*) ; 
 scalar_t__ FUNC1 (TYPE_11__*) ; 
 struct dib9000_config const dib9000_ops ; 
 int /*<<< orphan*/  dib9000_tuner_algo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,struct dib9000_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct dib9000_state*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,struct dib9000_config const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 

struct dvb_frontend *FUNC11(struct i2c_adapter *i2c_adap, u8 i2c_addr, const struct dib9000_config *cfg)
{
	struct dvb_frontend *fe;
	struct dib9000_state *st;
	st = FUNC7(sizeof(struct dib9000_state), GFP_KERNEL);
	if (st == NULL)
		return NULL;
	fe = FUNC7(sizeof(struct dvb_frontend), GFP_KERNEL);
	if (fe == NULL) {
		FUNC6(st);
		return NULL;
	}

	FUNC8(&st->chip.d9.cfg, cfg, sizeof(struct dib9000_config));
	st->i2c.i2c_adap = i2c_adap;
	st->i2c.i2c_addr = i2c_addr;
	st->i2c.i2c_write_buffer = st->i2c_write_buffer;
	st->i2c.i2c_read_buffer = st->i2c_read_buffer;

	st->gpio_dir = DIB9000_GPIO_DEFAULT_DIRECTIONS;
	st->gpio_val = DIB9000_GPIO_DEFAULT_VALUES;
	st->gpio_pwm_pos = DIB9000_GPIO_DEFAULT_PWM_POS;

	FUNC9(&st->platform.risc.mbx_if_lock);
	FUNC9(&st->platform.risc.mbx_lock);
	FUNC9(&st->platform.risc.mem_lock);
	FUNC9(&st->platform.risc.mem_mbx_lock);
	FUNC9(&st->demod_lock);
	st->get_frontend_internal = 0;

	st->pid_ctrl_index = -2;

	st->fe[0] = fe;
	fe->demodulator_priv = st;
	FUNC8(&st->fe[0]->ops, &dib9000_ops, sizeof(struct dvb_frontend_ops));

	/* Ensure the output mode remains at the previous default if it's
	 * not specifically set by the caller.
	 */
	if ((st->chip.d9.cfg.output_mode != OUTMODE_MPEG2_SERIAL) && (st->chip.d9.cfg.output_mode != OUTMODE_MPEG2_PAR_GATED_CLK))
		st->chip.d9.cfg.output_mode = OUTMODE_MPEG2_FIFO;

	if (FUNC1(&st->i2c) == 0)
		goto error;

	FUNC2(&st->i2c_master, DIB7000MC, st->i2c.i2c_adap, st->i2c.i2c_addr);

	st->tuner_adap.dev.parent = i2c_adap->dev.parent;
	FUNC10(st->tuner_adap.name, "DIB9000_FW TUNER ACCESS",
		sizeof(st->tuner_adap.name));
	st->tuner_adap.algo = &dib9000_tuner_algo;
	st->tuner_adap.algo_data = NULL;
	FUNC5(&st->tuner_adap, st);
	if (FUNC3(&st->tuner_adap) < 0)
		goto error;

	st->component_bus.dev.parent = i2c_adap->dev.parent;
	FUNC10(st->component_bus.name, "DIB9000_FW COMPONENT BUS ACCESS",
		sizeof(st->component_bus.name));
	st->component_bus.algo = &dib9000_component_bus_algo;
	st->component_bus.algo_data = NULL;
	st->component_bus_speed = 340;
	FUNC5(&st->component_bus, st);
	if (FUNC3(&st->component_bus) < 0)
		goto component_bus_add_error;

	FUNC0(fe);

	return fe;

component_bus_add_error:
	FUNC4(&st->tuner_adap);
error:
	FUNC6(st);
	return NULL;
}