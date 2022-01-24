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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct s5h1420_state {int dummy; } ;
struct dvb_frontend {struct s5h1420_state* demodulator_priv; } ;

/* Variables and functions */
 int FUNC0 (struct s5h1420_state*,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend* fe, u16* strength)
{
	struct s5h1420_state* state = fe->demodulator_priv;

	u8 val = FUNC0(state, 0x15);

	*strength =  (u16) ((val << 8) | val);

	return 0;
}