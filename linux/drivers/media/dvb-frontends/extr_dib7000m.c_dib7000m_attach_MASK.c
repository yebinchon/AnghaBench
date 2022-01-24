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
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {int /*<<< orphan*/  ops; struct dib7000m_state* demodulator_priv; } ;
struct dib7000m_state {int revision; int /*<<< orphan*/  i2c_addr; struct i2c_adapter* i2c_adap; int /*<<< orphan*/  i2c_master; int /*<<< orphan*/  timf_default; int /*<<< orphan*/  i2c_buffer_lock; struct dvb_frontend demod; int /*<<< orphan*/  cfg; } ;
struct dib7000m_config {TYPE_1__* bw; } ;
struct TYPE_2__ {int /*<<< orphan*/  timf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB7000 ; 
 int /*<<< orphan*/  DIB7000MC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct dib7000m_state*) ; 
 scalar_t__ FUNC1 (struct dib7000m_state*) ; 
 struct dib7000m_config dib7000m_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dib7000m_state*) ; 
 struct dib7000m_state* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct dib7000m_config*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct dvb_frontend * FUNC7(struct i2c_adapter *i2c_adap, u8 i2c_addr, struct dib7000m_config *cfg)
{
	struct dvb_frontend *demod;
	struct dib7000m_state *st;
	st = FUNC4(sizeof(struct dib7000m_state), GFP_KERNEL);
	if (st == NULL)
		return NULL;

	FUNC5(&st->cfg, cfg, sizeof(struct dib7000m_config));
	st->i2c_adap = i2c_adap;
	st->i2c_addr = i2c_addr;

	demod                   = &st->demod;
	demod->demodulator_priv = st;
	FUNC5(&st->demod.ops, &dib7000m_ops, sizeof(struct dvb_frontend_ops));
	FUNC6(&st->i2c_buffer_lock);

	st->timf_default = cfg->bw->timf;

	if (FUNC1(st) != 0)
		goto error;

	if (st->revision == 0x4000)
		FUNC2(&st->i2c_master, DIB7000, st->i2c_adap, st->i2c_addr);
	else
		FUNC2(&st->i2c_master, DIB7000MC, st->i2c_adap, st->i2c_addr);

	FUNC0(st);

	return demod;

error:
	FUNC3(st);
	return NULL;
}