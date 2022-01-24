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
struct itd1000_state {int dummy; } ;
struct dvb_frontend {struct itd1000_state* tuner_priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** itd1000_init_tab ; 
 int /*<<< orphan*/ ** itd1000_reinit_tab ; 
 int /*<<< orphan*/  FUNC1 (struct itd1000_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe)
{
	struct itd1000_state *state = fe->tuner_priv;
	int i;

	for (i = 0; i < FUNC0(itd1000_init_tab); i++)
		FUNC1(state, itd1000_init_tab[i][0], itd1000_init_tab[i][1]);

	for (i = 0; i < FUNC0(itd1000_reinit_tab); i++)
		FUNC1(state, itd1000_reinit_tab[i][0], itd1000_reinit_tab[i][1]);

	return 0;
}