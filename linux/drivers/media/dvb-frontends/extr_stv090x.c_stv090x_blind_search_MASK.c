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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct stv090x_state {int /*<<< orphan*/  DemodTimeout; TYPE_1__* internal; } ;
typedef  int s32 ;
struct TYPE_2__ {int dev_ver; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGC2I0 ; 
 int /*<<< orphan*/  AGC2I1 ; 
 int /*<<< orphan*/  CARCFG ; 
 int /*<<< orphan*/  CFR_OVERFLOW_FIELD ; 
 int /*<<< orphan*/  DEMOD_DELOCK_FIELD ; 
 int /*<<< orphan*/  DSTATUS2 ; 
 int /*<<< orphan*/  EQUALCFG ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  FFECFG ; 
 int /*<<< orphan*/  KREFTMG ; 
 int /*<<< orphan*/  RTCS2 ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VAVSRVIT ; 
 int /*<<< orphan*/  VITSCALE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC5 (struct stv090x_state*) ; 
 int FUNC6 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct stv090x_state*) ; 
 scalar_t__ FUNC8 (struct stv090x_state*) ; 
 scalar_t__ FUNC9 (struct stv090x_state*) ; 

__attribute__((used)) static int FUNC10(struct stv090x_state *state)
{
	u32 agc2, reg, srate_coarse;
	s32 cpt_fail, agc2_ovflw, i;
	u8 k_ref, k_max, k_min;
	int coarse_fail = 0;
	int lock;

	k_max = 110;
	k_min = 10;

	agc2 = FUNC5(state);

	if (agc2 > FUNC2(state->internal->dev_ver)) {
		lock = 0;
	} else {

		if (state->internal->dev_ver <= 0x20) {
			if (FUNC3(state, CARCFG, 0xc4) < 0)
				goto err;
		} else {
			/* > Cut 3 */
			if (FUNC3(state, CARCFG, 0x06) < 0)
				goto err;
		}

		if (FUNC3(state, RTCS2, 0x44) < 0)
			goto err;

		if (state->internal->dev_ver >= 0x20) {
			if (FUNC3(state, EQUALCFG, 0x41) < 0)
				goto err;
			if (FUNC3(state, FFECFG, 0x41) < 0)
				goto err;
			if (FUNC3(state, VITSCALE, 0x82) < 0)
				goto err;
			if (FUNC3(state, VAVSRVIT, 0x00) < 0) /* set viterbi hysteresis */
				goto err;
		}

		k_ref = k_max;
		do {
			if (FUNC3(state, KREFTMG, k_ref) < 0)
				goto err;
			if (FUNC8(state) != 0) {
				srate_coarse = FUNC9(state);
				if (srate_coarse != 0) {
					FUNC7(state);
					lock = FUNC6(state,
							state->DemodTimeout);
				} else {
					lock = 0;
				}
			} else {
				cpt_fail = 0;
				agc2_ovflw = 0;
				for (i = 0; i < 10; i++) {
					agc2 += (FUNC1(state, AGC2I1) << 8) |
						FUNC1(state, AGC2I0);
					if (agc2 >= 0xff00)
						agc2_ovflw++;
					reg = FUNC1(state, DSTATUS2);
					if ((FUNC0(reg, CFR_OVERFLOW_FIELD) == 0x01) &&
					    (FUNC0(reg, DEMOD_DELOCK_FIELD) == 0x01))

						cpt_fail++;
				}
				if ((cpt_fail > 7) || (agc2_ovflw > 7))
					coarse_fail = 1;

				lock = 0;
			}
			k_ref -= 20;
		} while ((k_ref >= k_min) && (!lock) && (!coarse_fail));
	}

	return lock;

err:
	FUNC4(FE_ERROR, 1, "I/O error");
	return -1;
}