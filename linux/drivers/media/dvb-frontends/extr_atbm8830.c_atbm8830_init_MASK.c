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
struct dvb_frontend {struct atbm_state* demodulator_priv; } ;
struct atbm_state {struct atbm8830_config* config; } ;
struct atbm8830_config {int /*<<< orphan*/  agc_hold_loop; int /*<<< orphan*/  agc_max; int /*<<< orphan*/  agc_min; int /*<<< orphan*/  if_freq; int /*<<< orphan*/  osc_clk_freq; } ;

/* Variables and functions */
 int REG_DEMOD_RUN ; 
 int /*<<< orphan*/  FUNC0 (struct atbm_state*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct atbm_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atbm_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atbm_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct atbm_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct atbm_state*) ; 

__attribute__((used)) static int FUNC6(struct dvb_frontend *fe)
{
	struct atbm_state *priv = fe->demodulator_priv;
	const struct atbm8830_config *cfg = priv->config;

	/*Set oscillator frequency*/
	FUNC3(priv, cfg->osc_clk_freq);

	/*Set IF frequency*/
	FUNC2(priv, cfg->if_freq);

	/*Set AGC Config*/
	FUNC1(priv, cfg->agc_min, cfg->agc_max,
		cfg->agc_hold_loop);

	/*Set static channel mode*/
	FUNC4(priv);

	FUNC5(priv);
	/*Turn off DSP reset*/
	FUNC0(priv, 0x000A, 0);

	/*SW version test*/
	FUNC0(priv, 0x020C, 11);

	/* Run */
	FUNC0(priv, REG_DEMOD_RUN, 1);

	return 0;
}