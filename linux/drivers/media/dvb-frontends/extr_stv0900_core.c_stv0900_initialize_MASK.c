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
struct stv0900_internal {int chip_id; scalar_t__ errs; int clkmode; } ;
typedef  int s32 ;
typedef  enum fe_stv0900_error { ____Placeholder_fe_stv0900_error } fe_stv0900_error ;

/* Variables and functions */
 int R0900_I2CCFG ; 
 int R0900_MID ; 
 int R0900_NCOARSE ; 
 int R0900_P1_DMDISTATE ; 
 int R0900_P1_FSPYCFG ; 
 int R0900_P1_I2CRPT ; 
 int R0900_P1_PDELCTRL2 ; 
 int R0900_P1_PDELCTRL3 ; 
 int R0900_P1_TNRCFG ; 
 int R0900_P2_DMDISTATE ; 
 int R0900_P2_FSPYCFG ; 
 int R0900_P2_I2CRPT ; 
 int R0900_P2_PDELCTRL2 ; 
 int R0900_P2_PDELCTRL3 ; 
 int R0900_P2_TNRCFG ; 
 int R0900_SYNTCTRL ; 
 int R0900_TSGENERAL ; 
 int R0900_TSTRES0 ; 
 int** STV0900_Cut20_AddOnVal ; 
 int STV0900_INVALID_HANDLE ; 
 int** STV0900_InitVal ; 
 scalar_t__ STV0900_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct stv0900_internal*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stv0900_internal*,int,int) ; 

__attribute__((used)) static enum fe_stv0900_error FUNC3(struct stv0900_internal *intp)
{
	s32 i;

	if (intp == NULL)
		return STV0900_INVALID_HANDLE;

	intp->chip_id = FUNC1(intp, R0900_MID);

	if (intp->errs != STV0900_NO_ERROR)
		return intp->errs;

	/*Startup sequence*/
	FUNC2(intp, R0900_P1_DMDISTATE, 0x5c);
	FUNC2(intp, R0900_P2_DMDISTATE, 0x5c);
	FUNC0(3);
	FUNC2(intp, R0900_P1_TNRCFG, 0x6c);
	FUNC2(intp, R0900_P2_TNRCFG, 0x6f);
	FUNC2(intp, R0900_P1_I2CRPT, 0x20);
	FUNC2(intp, R0900_P2_I2CRPT, 0x20);
	FUNC2(intp, R0900_NCOARSE, 0x13);
	FUNC0(3);
	FUNC2(intp, R0900_I2CCFG, 0x08);

	switch (intp->clkmode) {
	case 0:
	case 2:
		FUNC2(intp, R0900_SYNTCTRL, 0x20
				| intp->clkmode);
		break;
	default:
		/* preserve SELOSCI bit */
		i = 0x02 & FUNC1(intp, R0900_SYNTCTRL);
		FUNC2(intp, R0900_SYNTCTRL, 0x20 | i);
		break;
	}

	FUNC0(3);
	for (i = 0; i < 181; i++)
		FUNC2(intp, STV0900_InitVal[i][0],
				STV0900_InitVal[i][1]);

	if (FUNC1(intp, R0900_MID) >= 0x20) {
		FUNC2(intp, R0900_TSGENERAL, 0x0c);
		for (i = 0; i < 32; i++)
			FUNC2(intp, STV0900_Cut20_AddOnVal[i][0],
					STV0900_Cut20_AddOnVal[i][1]);
	}

	FUNC2(intp, R0900_P1_FSPYCFG, 0x6c);
	FUNC2(intp, R0900_P2_FSPYCFG, 0x6c);

	FUNC2(intp, R0900_P1_PDELCTRL2, 0x01);
	FUNC2(intp, R0900_P2_PDELCTRL2, 0x21);

	FUNC2(intp, R0900_P1_PDELCTRL3, 0x20);
	FUNC2(intp, R0900_P2_PDELCTRL3, 0x20);

	FUNC2(intp, R0900_TSTRES0, 0x80);
	FUNC2(intp, R0900_TSTRES0, 0x00);

	return STV0900_NO_ERROR;
}