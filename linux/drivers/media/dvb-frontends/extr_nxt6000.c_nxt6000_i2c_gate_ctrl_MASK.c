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
struct nxt6000_state {int dummy; } ;
struct dvb_frontend {struct nxt6000_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE_TUNER_IIC ; 
 int FUNC0 (struct nxt6000_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend* fe, int enable)
{
	struct nxt6000_state* state = fe->demodulator_priv;

	if (enable) {
		return FUNC0(state, ENABLE_TUNER_IIC, 0x01);
	} else {
		return FUNC0(state, ENABLE_TUNER_IIC, 0x00);
	}
}