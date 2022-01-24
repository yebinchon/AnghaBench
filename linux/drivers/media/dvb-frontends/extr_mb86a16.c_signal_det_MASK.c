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
struct mb86a16_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mb86a16_state*,int,int,int) ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  MB86A16_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC2 (struct mb86a16_state*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mb86a16_state*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mb86a16_state*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mb86a16_state*) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int FUNC7(struct mb86a16_state *state,
		      int smrt,
		      unsigned char *SIG)
{
	int ret;
	int smrtd;
	unsigned char S[3];
	int i;

	if (*SIG > 45) {
		if (FUNC0(state, 2, 1, 2) < 0) {
			FUNC1(verbose, MB86A16_ERROR, 1, "CNTM set Error");
			return -1;
		}
	} else {
		if (FUNC0(state, 3, 1, 2) < 0) {
			FUNC1(verbose, MB86A16_ERROR, 1, "CNTM set Error");
			return -1;
		}
	}
	for (i = 0; i < 3; i++) {
		if (i == 0)
			smrtd = smrt * 98 / 100;
		else if (i == 1)
			smrtd = smrt;
		else
			smrtd = smrt * 102 / 100;
		FUNC4(state, smrtd);
		FUNC5(state, smrtd);
		FUNC6(state);
		FUNC3(10);
		if (FUNC2(state, 0x37, &(S[i])) != 2) {
			FUNC1(verbose, MB86A16_ERROR, 1, "I2C transfer error");
			return -EREMOTEIO;
		}
	}
	if ((S[1] > S[0] * 112 / 100) && (S[1] > S[2] * 112 / 100))
		ret = 1;
	else
		ret = 0;

	*SIG = S[1];

	if (FUNC0(state, 0, 1, 2) < 0) {
		FUNC1(verbose, MB86A16_ERROR, 1, "CNTM set Error");
		return -1;
	}

	return ret;
}