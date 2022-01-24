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
 scalar_t__ G200_EW3 ; 
 int MGA1064_PIX_CLK_CTL ; 
 int MGA1064_PIX_CLK_CTL_CLK_DIS ; 
 int MGA1064_PIX_CLK_CTL_CLK_POW_DOWN ; 
 int MGA1064_PIX_CLK_CTL_SEL_MSK ; 
 int MGA1064_PIX_CLK_CTL_SEL_PLL ; 
 int MGA1064_REMHEADCTL ; 
 int MGA1064_REMHEADCTL_CLKDIS ; 
 int MGA1064_REMHEADCTL_CLKSL_MSK ; 
 int MGA1064_REMHEADCTL_CLKSL_PLL ; 
 int MGA1064_VREF_CTL ; 
 int MGA1064_WB_PIX_PLLC_M ; 
 int MGA1064_WB_PIX_PLLC_N ; 
 int MGA1064_WB_PIX_PLLC_P ; 
 int /*<<< orphan*/  MGAREG_CRTC_DATA ; 
 int /*<<< orphan*/  MGAREG_CRTC_INDEX ; 
 int /*<<< orphan*/  MGAREG_MEM_MISC_READ ; 
 int /*<<< orphan*/  MGAREG_MEM_MISC_WRITE ; 
 int /*<<< orphan*/  MGAREG_SEQ_DATA ; 
 int /*<<< orphan*/  MGAREG_SEQ_INDEX ; 
 int /*<<< orphan*/  MGAREG_VCOUNT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct mga_device *mdev, long clock)
{
	unsigned int vcomax, vcomin, pllreffreq;
	unsigned int delta, tmpdelta;
	unsigned int testp, testm, testn, testp2;
	unsigned int p, m, n;
	unsigned int computed;
	int i, j, tmpcount, vcount;
	bool pll_locked = false;
	u8 tmp;

	m = n = p = 0;

	delta = 0xffffffff;

	if (mdev->type == G200_EW3) {

		vcomax = 800000;
		vcomin = 400000;
		pllreffreq = 25000;

		for (testp = 1; testp < 8; testp++) {
			for (testp2 = 1; testp2 < 8; testp2++) {
				if (testp < testp2)
					continue;
				if ((clock * testp * testp2) > vcomax)
					continue;
				if ((clock * testp * testp2) < vcomin)
					continue;
				for (testm = 1; testm < 26; testm++) {
					for (testn = 32; testn < 2048 ; testn++) {
						computed = (pllreffreq * testn) /
							(testm * testp * testp2);
						if (computed > clock)
							tmpdelta = computed - clock;
						else
							tmpdelta = clock - computed;
						if (tmpdelta < delta) {
							delta = tmpdelta;
							m = ((testn & 0x100) >> 1) |
								(testm);
							n = (testn & 0xFF);
							p = ((testn & 0x600) >> 3) |
								(testp2 << 3) |
								(testp);
						}
					}
				}
			}
		}
	} else {

		vcomax = 550000;
		vcomin = 150000;
		pllreffreq = 48000;

		for (testp = 1; testp < 9; testp++) {
			if (clock * testp > vcomax)
				continue;
			if (clock * testp < vcomin)
				continue;

			for (testm = 1; testm < 17; testm++) {
				for (testn = 1; testn < 151; testn++) {
					computed = (pllreffreq * testn) /
						(testm * testp);
					if (computed > clock)
						tmpdelta = computed - clock;
					else
						tmpdelta = clock - computed;
					if (tmpdelta < delta) {
						delta = tmpdelta;
						n = testn - 1;
						m = (testm - 1) |
							((n >> 1) & 0x80);
						p = testp - 1;
					}
				}
			}
		}
	}

	for (i = 0; i <= 32 && pll_locked == false; i++) {
		if (i > 0) {
			FUNC1(MGAREG_CRTC_INDEX, 0x1e);
			tmp = FUNC0(MGAREG_CRTC_DATA);
			if (tmp < 0xff)
				FUNC1(MGAREG_CRTC_DATA, tmp+1);
		}

		/* set pixclkdis to 1 */
		FUNC1(DAC_INDEX, MGA1064_PIX_CLK_CTL);
		tmp = FUNC0(DAC_DATA);
		tmp |= MGA1064_PIX_CLK_CTL_CLK_DIS;
		FUNC1(DAC_DATA, tmp);

		FUNC1(DAC_INDEX, MGA1064_REMHEADCTL);
		tmp = FUNC0(DAC_DATA);
		tmp |= MGA1064_REMHEADCTL_CLKDIS;
		FUNC1(DAC_DATA, tmp);

		/* select PLL Set C */
		tmp = FUNC0(MGAREG_MEM_MISC_READ);
		tmp |= 0x3 << 2;
		FUNC1(MGAREG_MEM_MISC_WRITE, tmp);

		FUNC1(DAC_INDEX, MGA1064_PIX_CLK_CTL);
		tmp = FUNC0(DAC_DATA);
		tmp |= MGA1064_PIX_CLK_CTL_CLK_POW_DOWN | 0x80;
		FUNC1(DAC_DATA, tmp);

		FUNC3(500);

		/* reset the PLL */
		FUNC1(DAC_INDEX, MGA1064_VREF_CTL);
		tmp = FUNC0(DAC_DATA);
		tmp &= ~0x04;
		FUNC1(DAC_DATA, tmp);

		FUNC3(50);

		/* program pixel pll register */
		FUNC2(MGA1064_WB_PIX_PLLC_N, n);
		FUNC2(MGA1064_WB_PIX_PLLC_M, m);
		FUNC2(MGA1064_WB_PIX_PLLC_P, p);

		FUNC3(50);

		/* turn pll on */
		FUNC1(DAC_INDEX, MGA1064_VREF_CTL);
		tmp = FUNC0(DAC_DATA);
		tmp |= 0x04;
		FUNC2(MGA1064_VREF_CTL, tmp);

		FUNC3(500);

		/* select the pixel pll */
		FUNC1(DAC_INDEX, MGA1064_PIX_CLK_CTL);
		tmp = FUNC0(DAC_DATA);
		tmp &= ~MGA1064_PIX_CLK_CTL_SEL_MSK;
		tmp |= MGA1064_PIX_CLK_CTL_SEL_PLL;
		FUNC1(DAC_DATA, tmp);

		FUNC1(DAC_INDEX, MGA1064_REMHEADCTL);
		tmp = FUNC0(DAC_DATA);
		tmp &= ~MGA1064_REMHEADCTL_CLKSL_MSK;
		tmp |= MGA1064_REMHEADCTL_CLKSL_PLL;
		FUNC1(DAC_DATA, tmp);

		/* reset dotclock rate bit */
		FUNC1(MGAREG_SEQ_INDEX, 1);
		tmp = FUNC0(MGAREG_SEQ_DATA);
		tmp &= ~0x8;
		FUNC1(MGAREG_SEQ_DATA, tmp);

		FUNC1(DAC_INDEX, MGA1064_PIX_CLK_CTL);
		tmp = FUNC0(DAC_DATA);
		tmp &= ~MGA1064_PIX_CLK_CTL_CLK_DIS;
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
	FUNC1(DAC_INDEX, MGA1064_REMHEADCTL);
	tmp = FUNC0(DAC_DATA);
	tmp &= ~MGA1064_REMHEADCTL_CLKDIS;
	FUNC2(MGA1064_REMHEADCTL, tmp);
	return 0;
}