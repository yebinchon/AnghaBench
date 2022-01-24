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
struct s5h1420_state {int CON_1_val; TYPE_1__* config; } ;
struct dvb_frontend {struct s5h1420_state* demodulator_priv; } ;
struct TYPE_2__ {int serial_mpeg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct s5h1420_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct s5h1420_state*,int,int) ; 

__attribute__((used)) static int FUNC3 (struct dvb_frontend* fe)
{
	struct s5h1420_state* state = fe->demodulator_priv;

	/* disable power down and do reset */
	state->CON_1_val = state->config->serial_mpeg << 4;
	FUNC2(state, 0x02, state->CON_1_val);
	FUNC0(10);
	FUNC1(state);

	return 0;
}