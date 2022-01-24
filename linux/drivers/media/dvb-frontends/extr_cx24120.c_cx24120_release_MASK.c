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
struct dvb_frontend {struct cx24120_state* demodulator_priv; } ;
struct cx24120_state {TYPE_1__* i2c; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx24120_state*) ; 

__attribute__((used)) static void FUNC2(struct dvb_frontend *fe)
{
	struct cx24120_state *state = fe->demodulator_priv;

	FUNC0(&state->i2c->dev, "Clear state structure\n");
	FUNC1(state);
}