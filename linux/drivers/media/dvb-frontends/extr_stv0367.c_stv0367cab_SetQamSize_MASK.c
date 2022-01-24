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
struct stv0367_state {int dummy; } ;
typedef  enum stv0367cab_mod { ____Placeholder_stv0367cab_mod } stv0367cab_mod ;

/* Variables and functions */
 int /*<<< orphan*/  F367CAB_QAM_MODE ; 
#define  FE_CAB_MOD_QAM1024 135 
#define  FE_CAB_MOD_QAM128 134 
#define  FE_CAB_MOD_QAM16 133 
#define  FE_CAB_MOD_QAM256 132 
#define  FE_CAB_MOD_QAM32 131 
#define  FE_CAB_MOD_QAM4 130 
#define  FE_CAB_MOD_QAM512 129 
#define  FE_CAB_MOD_QAM64 128 
 int /*<<< orphan*/  R367CAB_AGC_PWR_REF_L ; 
 int /*<<< orphan*/  R367CAB_EQU_CRL_LD_SEN ; 
 int /*<<< orphan*/  R367CAB_EQU_CRL_LIMITER ; 
 int /*<<< orphan*/  R367CAB_EQU_CRL_LPF_GAIN ; 
 int /*<<< orphan*/  R367CAB_EQU_CTR_LPF_GAIN ; 
 int /*<<< orphan*/  R367CAB_EQU_PNT_GAIN ; 
 int /*<<< orphan*/  R367CAB_FSM_STATE ; 
 int /*<<< orphan*/  R367CAB_IQDEM_ADJ_AGC_REF ; 
 int /*<<< orphan*/  FUNC0 (struct stv0367_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct stv0367_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum stv0367cab_mod FUNC2(struct stv0367_state *state,
						 u32 SymbolRate,
						 enum stv0367cab_mod QAMSize)
{
	/* Set QAM size */
	FUNC0(state, F367CAB_QAM_MODE, QAMSize);

	/* Set Registers settings specific to the QAM size */
	switch (QAMSize) {
	case FE_CAB_MOD_QAM4:
		FUNC1(state, R367CAB_IQDEM_ADJ_AGC_REF, 0x00);
		break;
	case FE_CAB_MOD_QAM16:
		FUNC1(state, R367CAB_AGC_PWR_REF_L, 0x64);
		FUNC1(state, R367CAB_IQDEM_ADJ_AGC_REF, 0x00);
		FUNC1(state, R367CAB_FSM_STATE, 0x90);
		FUNC1(state, R367CAB_EQU_CTR_LPF_GAIN, 0xc1);
		FUNC1(state, R367CAB_EQU_CRL_LPF_GAIN, 0xa7);
		FUNC1(state, R367CAB_EQU_CRL_LD_SEN, 0x95);
		FUNC1(state, R367CAB_EQU_CRL_LIMITER, 0x40);
		FUNC1(state, R367CAB_EQU_PNT_GAIN, 0x8a);
		break;
	case FE_CAB_MOD_QAM32:
		FUNC1(state, R367CAB_IQDEM_ADJ_AGC_REF, 0x00);
		FUNC1(state, R367CAB_AGC_PWR_REF_L, 0x6e);
		FUNC1(state, R367CAB_FSM_STATE, 0xb0);
		FUNC1(state, R367CAB_EQU_CTR_LPF_GAIN, 0xc1);
		FUNC1(state, R367CAB_EQU_CRL_LPF_GAIN, 0xb7);
		FUNC1(state, R367CAB_EQU_CRL_LD_SEN, 0x9d);
		FUNC1(state, R367CAB_EQU_CRL_LIMITER, 0x7f);
		FUNC1(state, R367CAB_EQU_PNT_GAIN, 0xa7);
		break;
	case FE_CAB_MOD_QAM64:
		FUNC1(state, R367CAB_IQDEM_ADJ_AGC_REF, 0x82);
		FUNC1(state, R367CAB_AGC_PWR_REF_L, 0x5a);
		if (SymbolRate > 4500000) {
			FUNC1(state, R367CAB_FSM_STATE, 0xb0);
			FUNC1(state, R367CAB_EQU_CTR_LPF_GAIN, 0xc1);
			FUNC1(state, R367CAB_EQU_CRL_LPF_GAIN, 0xa5);
		} else if (SymbolRate > 2500000) {
			FUNC1(state, R367CAB_FSM_STATE, 0xa0);
			FUNC1(state, R367CAB_EQU_CTR_LPF_GAIN, 0xc1);
			FUNC1(state, R367CAB_EQU_CRL_LPF_GAIN, 0xa6);
		} else {
			FUNC1(state, R367CAB_FSM_STATE, 0xa0);
			FUNC1(state, R367CAB_EQU_CTR_LPF_GAIN, 0xd1);
			FUNC1(state, R367CAB_EQU_CRL_LPF_GAIN, 0xa7);
		}
		FUNC1(state, R367CAB_EQU_CRL_LD_SEN, 0x95);
		FUNC1(state, R367CAB_EQU_CRL_LIMITER, 0x40);
		FUNC1(state, R367CAB_EQU_PNT_GAIN, 0x99);
		break;
	case FE_CAB_MOD_QAM128:
		FUNC1(state, R367CAB_IQDEM_ADJ_AGC_REF, 0x00);
		FUNC1(state, R367CAB_AGC_PWR_REF_L, 0x76);
		FUNC1(state, R367CAB_FSM_STATE, 0x90);
		FUNC1(state, R367CAB_EQU_CTR_LPF_GAIN, 0xb1);
		if (SymbolRate > 4500000)
			FUNC1(state, R367CAB_EQU_CRL_LPF_GAIN, 0xa7);
		else if (SymbolRate > 2500000)
			FUNC1(state, R367CAB_EQU_CRL_LPF_GAIN, 0xa6);
		else
			FUNC1(state, R367CAB_EQU_CRL_LPF_GAIN, 0x97);

		FUNC1(state, R367CAB_EQU_CRL_LD_SEN, 0x8e);
		FUNC1(state, R367CAB_EQU_CRL_LIMITER, 0x7f);
		FUNC1(state, R367CAB_EQU_PNT_GAIN, 0xa7);
		break;
	case FE_CAB_MOD_QAM256:
		FUNC1(state, R367CAB_IQDEM_ADJ_AGC_REF, 0x94);
		FUNC1(state, R367CAB_AGC_PWR_REF_L, 0x5a);
		FUNC1(state, R367CAB_FSM_STATE, 0xa0);
		if (SymbolRate > 4500000)
			FUNC1(state, R367CAB_EQU_CTR_LPF_GAIN, 0xc1);
		else if (SymbolRate > 2500000)
			FUNC1(state, R367CAB_EQU_CTR_LPF_GAIN, 0xc1);
		else
			FUNC1(state, R367CAB_EQU_CTR_LPF_GAIN, 0xd1);

		FUNC1(state, R367CAB_EQU_CRL_LPF_GAIN, 0xa7);
		FUNC1(state, R367CAB_EQU_CRL_LD_SEN, 0x85);
		FUNC1(state, R367CAB_EQU_CRL_LIMITER, 0x40);
		FUNC1(state, R367CAB_EQU_PNT_GAIN, 0xa7);
		break;
	case FE_CAB_MOD_QAM512:
		FUNC1(state, R367CAB_IQDEM_ADJ_AGC_REF, 0x00);
		break;
	case FE_CAB_MOD_QAM1024:
		FUNC1(state, R367CAB_IQDEM_ADJ_AGC_REF, 0x00);
		break;
	default:
		break;
	}

	return QAMSize;
}