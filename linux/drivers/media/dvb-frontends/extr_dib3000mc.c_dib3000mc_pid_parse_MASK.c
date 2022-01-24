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
typedef  int u16 ;
struct dvb_frontend {struct dib3000mc_state* demodulator_priv; } ;
struct dib3000mc_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dib3000mc_state*,int) ; 
 int FUNC1 (struct dib3000mc_state*,int,int) ; 

int FUNC2(struct dvb_frontend *fe, int onoff)
{
	struct dib3000mc_state *state = fe->demodulator_priv;
	u16 tmp = FUNC0(state, 206) & ~(1 << 4);
	tmp |= (onoff << 4);
	return FUNC1(state, 206, tmp);
}