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
struct TYPE_2__ {int frequency; } ;
struct dvb_frontend {TYPE_1__ dtv_property_cache; struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  DIBX000_ADC_ON ; 
 int /*<<< orphan*/  FUNC1 (struct dib8000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dib8000_state*,unsigned char) ; 

__attribute__((used)) static void FUNC3(struct dvb_frontend *fe)
{
	struct dib8000_state *state = fe->demodulator_priv;
	FUNC1(state, DIBX000_ADC_ON);
	FUNC2(state, (unsigned char)(FUNC0(fe->dtv_property_cache.frequency / 1000)));
}