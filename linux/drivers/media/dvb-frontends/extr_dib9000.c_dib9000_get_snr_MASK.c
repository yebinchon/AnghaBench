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
typedef  int u16 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  mem_mbx_lock; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {TYPE_2__ platform; scalar_t__ i2c_read_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FE_MM_R_FE_MONITOR ; 
 int /*<<< orphan*/  FE_SYNC_CHANNEL ; 
 scalar_t__ FUNC0 (struct dib9000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dib9000_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC5(struct dvb_frontend *fe)
{
	struct dib9000_state *state = fe->demodulator_priv;
	u16 *c = (u16 *)state->i2c_read_buffer;
	u32 n, s, exp;
	u16 val;

	if (FUNC3(&state->platform.risc.mem_mbx_lock) < 0) {
		FUNC2("could not get the lock\n");
		return 0;
	}
	if (FUNC0(state, FE_SYNC_CHANNEL) < 0) {
		FUNC4(&state->platform.risc.mem_mbx_lock);
		return 0;
	}
	FUNC1(state, FE_MM_R_FE_MONITOR, (u8 *) c, 16 * 2);
	FUNC4(&state->platform.risc.mem_mbx_lock);

	val = c[7];
	n = (val >> 4) & 0xff;
	exp = ((val & 0xf) << 2);
	val = c[8];
	exp += ((val >> 14) & 0x3);
	if ((exp & 0x20) != 0)
		exp -= 0x40;
	n <<= exp + 16;

	s = (val >> 6) & 0xFF;
	exp = (val & 0x3F);
	if ((exp & 0x20) != 0)
		exp -= 0x40;
	s <<= exp + 16;

	if (n > 0) {
		u32 t = (s / n) << 16;
		return t + ((s << 16) - n * t) / n;
	}
	return 0xffffffff;
}