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
struct stv0900_internal {int* srch_standard; int chip_id; } ;
typedef  int s32 ;
typedef  enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;

/* Variables and functions */
 int /*<<< orphan*/  CARFREQ ; 
 int /*<<< orphan*/  CORRELABS ; 
 int /*<<< orphan*/  DMDCFGMD ; 
 int FALSE ; 
 int /*<<< orphan*/  FLYWHEEL_CPT ; 
 int /*<<< orphan*/  HEADER_MODE ; 
#define  STV0900_AUTO_SEARCH 131 
 int STV0900_DVBS2_FOUND ; 
#define  STV0900_SEARCH_DSS 130 
#define  STV0900_SEARCH_DVBS1 129 
#define  STV0900_SEARCH_DVBS2 128 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct stv0900_internal*,int) ; 
 int FUNC2 (struct stv0900_internal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stv0900_internal*,int*,int*,int*,int) ; 
 int FUNC4 (struct stv0900_internal*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct stv0900_internal*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct stv0900_internal *intp,
				enum fe_stv0900_demod_num demod)
{
	int	lock = FALSE,
		no_signal,
		zigzag;
	s32	s2fw,
		fqc_inc,
		sft_stp_tout,
		trial_cntr,
		max_steps;

	FUNC3(intp, &fqc_inc, &sft_stp_tout,
					&max_steps, demod);
	switch (intp->srch_standard[demod]) {
	case STV0900_SEARCH_DVBS1:
	case STV0900_SEARCH_DSS:
		if (intp->chip_id >= 0x20)
			FUNC5(intp, CARFREQ, 0x3b);
		else
			FUNC5(intp, CARFREQ, 0xef);

		FUNC5(intp, DMDCFGMD, 0x49);
		zigzag = FALSE;
		break;
	case STV0900_SEARCH_DVBS2:
		if (intp->chip_id >= 0x20)
			FUNC5(intp, CORRELABS, 0x79);
		else
			FUNC5(intp, CORRELABS, 0x68);

		FUNC5(intp, DMDCFGMD, 0x89);

		zigzag = TRUE;
		break;
	case STV0900_AUTO_SEARCH:
	default:
		if (intp->chip_id >= 0x20) {
			FUNC5(intp, CARFREQ, 0x3b);
			FUNC5(intp, CORRELABS, 0x79);
		} else {
			FUNC5(intp, CARFREQ, 0xef);
			FUNC5(intp, CORRELABS, 0x68);
		}

		FUNC5(intp, DMDCFGMD, 0xc9);
		zigzag = FALSE;
		break;
	}

	trial_cntr = 0;
	do {
		lock = FUNC4(intp,
						fqc_inc,
						sft_stp_tout,
						zigzag,
						max_steps,
						demod);
		no_signal = FUNC1(intp, demod);
		trial_cntr++;
		if ((lock == TRUE)
				|| (no_signal == TRUE)
				|| (trial_cntr == 2)) {

			if (intp->chip_id >= 0x20) {
				FUNC5(intp, CARFREQ, 0x49);
				FUNC5(intp, CORRELABS, 0x9e);
			} else {
				FUNC5(intp, CARFREQ, 0xed);
				FUNC5(intp, CORRELABS, 0x88);
			}

			if ((FUNC2(intp, HEADER_MODE) ==
						STV0900_DVBS2_FOUND) &&
							(lock == TRUE)) {
				FUNC0(sft_stp_tout);
				s2fw = FUNC2(intp, FLYWHEEL_CPT);

				if (s2fw < 0xd) {
					FUNC0(sft_stp_tout);
					s2fw = FUNC2(intp,
								FLYWHEEL_CPT);
				}

				if (s2fw < 0xd) {
					lock = FALSE;

					if (trial_cntr < 2) {
						if (intp->chip_id >= 0x20)
							FUNC5(intp,
								CORRELABS,
								0x79);
						else
							FUNC5(intp,
								CORRELABS,
								0x68);

						FUNC5(intp,
								DMDCFGMD,
								0x89);
					}
				}
			}
		}

	} while ((lock == FALSE)
		&& (trial_cntr < 2)
		&& (no_signal == FALSE));

	return lock;
}