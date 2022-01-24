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
typedef  int u8 ;
typedef  int u16 ;
struct i2c_msg {int addr; int len; int flags; int /*<<< orphan*/  buf; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  mem_mbx_lock; struct dib9000_fe_memory_map* fe_mm; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {int component_bus_speed; TYPE_2__ platform; } ;
struct dib9000_fe_memory_map {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int DIBX000_I2C_INTERFACE_GPIO_3_4 ; 
 size_t FE_MM_RW_COMPONENT_ACCESS_BUFFER ; 
 int /*<<< orphan*/  FE_MM_W_COMPONENT_ACCESS ; 
 int /*<<< orphan*/  FE_SYNC_COMPONENT_ACCESS ; 
 int I2C_M_RD ; 
 scalar_t__ FUNC0 (struct dib9000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dib9000_state*,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dib9000_state*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dib9000_state*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct dib9000_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct dib9000_state* FUNC6 (struct i2c_adapter*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_adapter *i2c_adap, struct i2c_msg msg[], int num)
{
	struct dib9000_state *state = FUNC6(i2c_adap);
	u8 type = 0;		/* I2C */
	u8 port = DIBX000_I2C_INTERFACE_GPIO_3_4;
	u16 scl = state->component_bus_speed;	/* SCL frequency */
	struct dib9000_fe_memory_map *m = &state->platform.risc.fe_mm[FE_MM_RW_COMPONENT_ACCESS_BUFFER];
	u8 p[13] = { 0 };

	p[0] = type;
	p[1] = port;
	p[2] = msg[0].addr << 1;

	p[3] = (u8) scl & 0xff;	/* scl */
	p[4] = (u8) (scl >> 8);

	p[7] = 0;
	p[8] = 0;

	p[9] = (u8) (msg[0].len);
	p[10] = (u8) (msg[0].len >> 8);
	if ((num > 1) && (msg[1].flags & I2C_M_RD)) {
		p[11] = (u8) (msg[1].len);
		p[12] = (u8) (msg[1].len >> 8);
	} else {
		p[11] = 0;
		p[12] = 0;
	}

	if (FUNC7(&state->platform.risc.mem_mbx_lock) < 0) {
		FUNC5("could not get the lock\n");
		return 0;
	}

	FUNC3(state, FE_MM_W_COMPONENT_ACCESS, p);

	{			/* write-part */
		FUNC2(state, m->addr, msg[0].len, 0);
		FUNC4(state, msg[0].buf, msg[0].len);
	}

	/* do the transaction */
	if (FUNC0(state, FE_SYNC_COMPONENT_ACCESS) < 0) {
		FUNC8(&state->platform.risc.mem_mbx_lock);
		return 0;
	}

	/* read back any possible result */
	if ((num > 1) && (msg[1].flags & I2C_M_RD))
		FUNC1(state, FE_MM_RW_COMPONENT_ACCESS_BUFFER, msg[1].buf, msg[1].len);

	FUNC8(&state->platform.risc.mem_mbx_lock);

	return num;
}