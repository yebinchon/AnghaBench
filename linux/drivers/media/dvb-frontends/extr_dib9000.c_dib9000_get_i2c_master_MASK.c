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
struct i2c_adapter {int dummy; } ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct dib9000_state {int /*<<< orphan*/  i2c_master; } ;
typedef  enum dibx000_i2c_interface { ____Placeholder_dibx000_i2c_interface } dibx000_i2c_interface ;

/* Variables and functions */
 struct i2c_adapter* FUNC0 (int /*<<< orphan*/ *,int,int) ; 

struct i2c_adapter *FUNC1(struct dvb_frontend *fe, enum dibx000_i2c_interface intf, int gating)
{
	struct dib9000_state *st = fe->demodulator_priv;
	return FUNC0(&st->i2c_master, intf, gating);
}