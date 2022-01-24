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
typedef  int u16 ;
struct dvb_frontend {struct dib0070_state* tuner_priv; } ;
struct dib0070_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dib0070_state*,int) ; 
 int FUNC1 (struct dib0070_state*,int,int) ; 

int FUNC2(struct dvb_frontend *fe, u8 no)
{
	struct dib0070_state *state = fe->tuner_priv;
	u16 rxrf2 = FUNC0(state, 0x07) & 0xfe7ff;
	if (no > 3)
		no = 3;
	if (no < 1)
		no = 1;
	return FUNC1(state, 0x07, rxrf2 | (no << 11));
}