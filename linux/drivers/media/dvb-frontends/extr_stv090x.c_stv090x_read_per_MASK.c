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
struct stv090x_state {int dummy; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
typedef  int s32 ;
typedef  enum fe_status { ____Placeholder_fe_status } fe_status ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCNT20 ; 
 int /*<<< orphan*/  ERRCNT21 ; 
 int /*<<< orphan*/  ERRCNT22 ; 
 int /*<<< orphan*/  ERRCTRL2 ; 
 int /*<<< orphan*/  ERR_CNT20_FIELD ; 
 int /*<<< orphan*/  ERR_CNT21_FIELD ; 
 int /*<<< orphan*/  ERR_CNT2_FIELD ; 
 int /*<<< orphan*/  FBERCPT0 ; 
 int /*<<< orphan*/  FBERCPT1 ; 
 int /*<<< orphan*/  FBERCPT2 ; 
 int /*<<< orphan*/  FBERCPT3 ; 
 int /*<<< orphan*/  FBERCPT4 ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int FE_HAS_LOCK ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*,int*) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe, u32 *per)
{
	struct stv090x_state *state = fe->demodulator_priv;

	s32 count_4, count_3, count_2, count_1, count_0, count;
	u32 reg, h, m, l;
	enum fe_status status;

	FUNC4(fe, &status);
	if (!(status & FE_HAS_LOCK)) {
		*per = 1 << 23; /* Max PER */
	} else {
		/* Counter 2 */
		reg = FUNC1(state, ERRCNT22);
		h = FUNC0(reg, ERR_CNT2_FIELD);

		reg = FUNC1(state, ERRCNT21);
		m = FUNC0(reg, ERR_CNT21_FIELD);

		reg = FUNC1(state, ERRCNT20);
		l = FUNC0(reg, ERR_CNT20_FIELD);

		*per = ((h << 16) | (m << 8) | l);

		count_4 = FUNC1(state, FBERCPT4);
		count_3 = FUNC1(state, FBERCPT3);
		count_2 = FUNC1(state, FBERCPT2);
		count_1 = FUNC1(state, FBERCPT1);
		count_0 = FUNC1(state, FBERCPT0);

		if ((!count_4) && (!count_3)) {
			count  = (count_2 & 0xff) << 16;
			count |= (count_1 & 0xff) <<  8;
			count |=  count_0 & 0xff;
		} else {
			count = 1 << 24;
		}
		if (count == 0)
			*per = 1;
	}
	if (FUNC2(state, FBERCPT4, 0) < 0)
		goto err;
	if (FUNC2(state, ERRCTRL2, 0xc1) < 0)
		goto err;

	return 0;
err:
	FUNC3(FE_ERROR, 1, "I/O error");
	return -1;
}