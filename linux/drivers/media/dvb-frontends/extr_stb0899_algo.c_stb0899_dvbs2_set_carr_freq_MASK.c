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
typedef  int u32 ;
struct stb0899_state {struct stb0899_config* config; } ;
struct stb0899_config {int crl_nco_bits; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CRL_NOM_FREQ ; 
 int /*<<< orphan*/  STB0899_BASE_CRL_NOM_FREQ ; 
 int /*<<< orphan*/  STB0899_OFF0_CRL_NOM_FREQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STB0899_S2DEMOD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stb0899_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct stb0899_state *state, s32 carr_freq, u32 master_clk)
{
	struct stb0899_config *config = state->config;
	s32 crl_nom_freq;
	u32 reg;

	crl_nom_freq = (1 << config->crl_nco_bits) / master_clk;
	crl_nom_freq *= carr_freq;
	reg = FUNC0(STB0899_S2DEMOD, CRL_NOM_FREQ);
	FUNC1(CRL_NOM_FREQ, reg, crl_nom_freq);
	FUNC2(state, STB0899_S2DEMOD, STB0899_BASE_CRL_NOM_FREQ, STB0899_OFF0_CRL_NOM_FREQ, reg);
}