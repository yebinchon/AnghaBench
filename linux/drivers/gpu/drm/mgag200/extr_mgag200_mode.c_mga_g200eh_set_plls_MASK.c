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
typedef  int u8 ;
struct mga_device {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAC_DATA ; 
 int /*<<< orphan*/  DAC_INDEX ; 
 scalar_t__ G200_EH3 ; 
 int /*<<< orphan*/  MGA1064_EH_PIX_PLLC_M ; 
 int /*<<< orphan*/  MGA1064_EH_PIX_PLLC_N ; 
 int /*<<< orphan*/  MGA1064_EH_PIX_PLLC_P ; 
 int MGA1064_PIX_CLK_CTL ; 
 int MGA1064_PIX_CLK_CTL_CLK_DIS ; 
 int MGA1064_PIX_CLK_CTL_CLK_POW_DOWN ; 
 int MGA1064_PIX_CLK_CTL_SEL_MSK ; 
 int MGA1064_PIX_CLK_CTL_SEL_PLL ; 
 int /*<<< orphan*/  MGAREG_MEM_MISC_READ ; 
 int /*<<< orphan*/  MGAREG_MEM_MISC_WRITE ; 
 int /*<<< orphan*/  MGAREG_VCOUNT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct mga_device *mdev, long clock)
{
	unsigned int vcomax, vcomin, pllreffreq;
	unsigned int delta, tmpdelta;
	unsigned int testp, testm, testn;
	unsigned int p, m, n;
	unsigned int computed;
	int i, j, tmpcount, vcount;
	u8 tmp;
	bool pll_locked = false;

	m = n = p = 0;

	if (mdev->type == G200_EH3) {
		vcomax = 3000000;
		vcomin = 1500000;
		pllreffreq = 25000;

		delta = 0xffffffff;

		testp = 0;

		for (testm = 150; testm >= 6; testm--) {
			if (clock * testm > vcomax)
				continue;
			if (clock * testm < vcomin)
				continue;
			for (testn = 120; testn >= 60; testn--) {
				computed = (pllreffreq * testn) / testm;
				if (computed > clock)
					tmpdelta = computed - clock;
				else
					tmpdelta = clock - computed;
				if (tmpdelta < delta) {
					delta = tmpdelta;
					n = testn;
					m = testm;
					p = testp;
				}
				if (delta == 0)
					break;
			}
			if (delta == 0)
				break;
		}
	} else {

		vcomax = 800000;
		vcomin = 400000;
		pllreffreq = 33333;

		delta = 0xffffffff;

		for (testp = 16; testp > 0; testp >>= 1) {
			if (clock * testp > vcomax)
				continue;
			if (clock * testp < vcomin)
				continue;

			for (testm = 1; testm < 33; testm++) {
				for (testn = 17; testn < 257; testn++) {
					computed = (pllreffreq * testn) /
						(testm * testp);
					if (computed > clock)
						tmpdelta = computed - clock;
					else
						tmpdelta = clock - computed;
					if (tmpdelta < delta) {
						delta = tmpdelta;
						n = testn - 1;
						m = (testm - 1);
						p = testp - 1;
					}
					if ((clock * testp) >= 600000)
						p |= 0x80;
				}
			}
		}
	}
	for (i = 0; i <= 32 && pll_locked == false; i++) {
		FUNC1(DAC_INDEX, MGA1064_PIX_CLK_CTL);
		tmp = FUNC0(DAC_DATA);
		tmp |= MGA1064_PIX_CLK_CTL_CLK_DIS;
		FUNC1(DAC_DATA, tmp);

		tmp = FUNC0(MGAREG_MEM_MISC_READ);
		tmp |= 0x3 << 2;
		FUNC1(MGAREG_MEM_MISC_WRITE, tmp);

		FUNC1(DAC_INDEX, MGA1064_PIX_CLK_CTL);
		tmp = FUNC0(DAC_DATA);
		tmp |= MGA1064_PIX_CLK_CTL_CLK_POW_DOWN;
		FUNC1(DAC_DATA, tmp);

		FUNC3(500);

		FUNC2(MGA1064_EH_PIX_PLLC_M, m);
		FUNC2(MGA1064_EH_PIX_PLLC_N, n);
		FUNC2(MGA1064_EH_PIX_PLLC_P, p);

		FUNC3(500);

		FUNC1(DAC_INDEX, MGA1064_PIX_CLK_CTL);
		tmp = FUNC0(DAC_DATA);
		tmp &= ~MGA1064_PIX_CLK_CTL_SEL_MSK;
		tmp |= MGA1064_PIX_CLK_CTL_SEL_PLL;
		FUNC1(DAC_DATA, tmp);

		FUNC1(DAC_INDEX, MGA1064_PIX_CLK_CTL);
		tmp = FUNC0(DAC_DATA);
		tmp &= ~MGA1064_PIX_CLK_CTL_CLK_DIS;
		tmp &= ~MGA1064_PIX_CLK_CTL_CLK_POW_DOWN;
		FUNC1(DAC_DATA, tmp);

		vcount = FUNC0(MGAREG_VCOUNT);

		for (j = 0; j < 30 && pll_locked == false; j++) {
			tmpcount = FUNC0(MGAREG_VCOUNT);
			if (tmpcount < vcount)
				vcount = 0;
			if ((tmpcount - vcount) > 2)
				pll_locked = true;
			else
				FUNC3(5);
		}
	}

	return 0;
}