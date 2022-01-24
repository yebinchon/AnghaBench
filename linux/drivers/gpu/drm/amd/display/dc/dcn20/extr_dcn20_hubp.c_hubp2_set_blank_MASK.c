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
typedef  int uint32_t ;
struct hubp {int mpcc_id; int /*<<< orphan*/  opp_id; } ;
struct dcn20_hubp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCHUBP_CNTL ; 
 int /*<<< orphan*/  HUBP_BLANK_EN ; 
 int /*<<< orphan*/  HUBP_NO_OUTSTANDING_REQ ; 
 int /*<<< orphan*/  HUBP_TTU_DISABLE ; 
 int /*<<< orphan*/  OPP_ID_INVALID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 struct dcn20_hubp* FUNC3 (struct hubp*) ; 

void FUNC4(struct hubp *hubp, bool blank)
{
	struct dcn20_hubp *hubp2 = FUNC3(hubp);
	uint32_t blank_en = blank ? 1 : 0;

	FUNC1(DCHUBP_CNTL,
			HUBP_BLANK_EN, blank_en,
			HUBP_TTU_DISABLE, blank_en);

	if (blank) {
		uint32_t reg_val = FUNC0(DCHUBP_CNTL);

		if (reg_val) {
			/* init sequence workaround: in case HUBP is
			 * power gated, this wait would timeout.
			 *
			 * we just wrote reg_val to non-0, if it stay 0
			 * it means HUBP is gated
			 */
			FUNC2(DCHUBP_CNTL,
					HUBP_NO_OUTSTANDING_REQ, 1,
					1, 200);
		}

		hubp->mpcc_id = 0xf;
		hubp->opp_id = OPP_ID_INVALID;
	}
}