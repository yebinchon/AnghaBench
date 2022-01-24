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
struct mt312_state {int dummy; } ;
struct dvb_frontend {struct mt312_state* demodulator_priv; } ;
struct dtv_frontend_properties {int /*<<< orphan*/  fec_inner; int /*<<< orphan*/  symbol_rate; int /*<<< orphan*/  inversion; } ;

/* Variables and functions */
 int FUNC0 (struct mt312_state*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mt312_state*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mt312_state*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe,
			      struct dtv_frontend_properties *p)
{
	struct mt312_state *state = fe->demodulator_priv;
	int ret;

	ret = FUNC1(state, &p->inversion);
	if (ret < 0)
		return ret;

	ret = FUNC2(state, &p->symbol_rate);
	if (ret < 0)
		return ret;

	ret = FUNC0(state, &p->fec_inner);
	if (ret < 0)
		return ret;

	return 0;
}