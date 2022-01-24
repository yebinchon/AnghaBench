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
typedef  int u32 ;
typedef  int u16 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  mem_mbx_lock; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {int /*<<< orphan*/  demod_lock; scalar_t__ i2c_read_buffer; TYPE_2__ platform; } ;

/* Variables and functions */
 int EINTR ; 
 int EIO ; 
 int /*<<< orphan*/  FE_MM_R_FE_MONITOR ; 
 int /*<<< orphan*/  FE_SYNC_CHANNEL ; 
 scalar_t__ FUNC0 (struct dib9000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dib9000_state*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe, u32 * ber)
{
	struct dib9000_state *state = fe->demodulator_priv;
	u16 *c;
	int ret = 0;

	if (FUNC3(&state->demod_lock) < 0) {
		FUNC2("could not get the lock\n");
		return -EINTR;
	}
	if (FUNC3(&state->platform.risc.mem_mbx_lock) < 0) {
		FUNC2("could not get the lock\n");
		ret = -EINTR;
		goto error;
	}
	if (FUNC0(state, FE_SYNC_CHANNEL) < 0) {
		FUNC4(&state->platform.risc.mem_mbx_lock);
		ret = -EIO;
		goto error;
	}
	FUNC1(state, FE_MM_R_FE_MONITOR,
			state->i2c_read_buffer, 16 * 2);
	FUNC4(&state->platform.risc.mem_mbx_lock);

	c = (u16 *)state->i2c_read_buffer;

	*ber = c[10] << 16 | c[11];

error:
	FUNC4(&state->demod_lock);
	return ret;
}