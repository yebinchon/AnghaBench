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
typedef  int u64 ;
typedef  int u32 ;
struct skl_wrpll_params {int central_freq; int pdiv; int kdiv; int qdiv_ratio; int qdiv_mode; int dco_integer; int dco_fraction; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct skl_wrpll_params *params,
				      u64 afe_clock,
				      u64 central_freq,
				      u32 p0, u32 p1, u32 p2)
{
	u64 dco_freq;

	switch (central_freq) {
	case 9600000000ULL:
		params->central_freq = 0;
		break;
	case 9000000000ULL:
		params->central_freq = 1;
		break;
	case 8400000000ULL:
		params->central_freq = 3;
	}

	switch (p0) {
	case 1:
		params->pdiv = 0;
		break;
	case 2:
		params->pdiv = 1;
		break;
	case 3:
		params->pdiv = 2;
		break;
	case 7:
		params->pdiv = 4;
		break;
	default:
		FUNC1(1, "Incorrect PDiv\n");
	}

	switch (p2) {
	case 5:
		params->kdiv = 0;
		break;
	case 2:
		params->kdiv = 1;
		break;
	case 3:
		params->kdiv = 2;
		break;
	case 1:
		params->kdiv = 3;
		break;
	default:
		FUNC1(1, "Incorrect KDiv\n");
	}

	params->qdiv_ratio = p1;
	params->qdiv_mode = (params->qdiv_ratio == 1) ? 0 : 1;

	dco_freq = p0 * p1 * p2 * afe_clock;

	/*
	 * Intermediate values are in Hz.
	 * Divide by MHz to match bsepc
	 */
	params->dco_integer = FUNC2(dco_freq, 24 * FUNC0(1));
	params->dco_fraction =
		FUNC2((FUNC2(dco_freq, 24) -
			 params->dco_integer * FUNC0(1)) * 0x8000, FUNC0(1));
}