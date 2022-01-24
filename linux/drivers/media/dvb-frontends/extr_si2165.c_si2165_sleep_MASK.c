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
struct si2165_state {int dummy; } ;
struct dvb_frontend {struct si2165_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_CHIP_MODE ; 
 int /*<<< orphan*/  REG_DSP_CLOCK ; 
 int SI2165_MODE_OFF ; 
 int FUNC0 (struct si2165_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe)
{
	int ret;
	struct si2165_state *state = fe->demodulator_priv;

	/* dsp clock disable */
	ret = FUNC0(state, REG_DSP_CLOCK, 0x00);
	if (ret < 0)
		return ret;
	/* chip mode */
	ret = FUNC0(state, REG_CHIP_MODE, SI2165_MODE_OFF);
	if (ret < 0)
		return ret;
	return 0;
}