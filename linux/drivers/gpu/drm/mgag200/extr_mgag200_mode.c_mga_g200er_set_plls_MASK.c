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
struct mga_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAC_DATA ; 
 int /*<<< orphan*/  DAC_INDEX ; 
 int /*<<< orphan*/  MGA1064_ER_PIX_PLLC_M ; 
 int /*<<< orphan*/  MGA1064_ER_PIX_PLLC_N ; 
 int /*<<< orphan*/  MGA1064_ER_PIX_PLLC_P ; 
 int MGA1064_PIX_CLK_CTL ; 
 int MGA1064_PIX_CLK_CTL_CLK_DIS ; 
 int MGA1064_PIX_CLK_CTL_CLK_POW_DOWN ; 
 int MGA1064_REMHEADCTL ; 
 int MGA1064_REMHEADCTL_CLKDIS ; 
 int /*<<< orphan*/  MGAREG_MEM_MISC_READ ; 
 int /*<<< orphan*/  MGAREG_MEM_MISC_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct mga_device *mdev, long clock)
{
	unsigned int vcomax, vcomin, pllreffreq;
	unsigned int delta, tmpdelta;
	int testr, testn, testm, testo;
	unsigned int p, m, n;
	unsigned int computed, vco;
	int tmp;
	const unsigned int m_div_val[] = { 1, 2, 4, 8 };

	m = n = p = 0;
	vcomax = 1488000;
	vcomin = 1056000;
	pllreffreq = 48000;

	delta = 0xffffffff;

	for (testr = 0; testr < 4; testr++) {
		if (delta == 0)
			break;
		for (testn = 5; testn < 129; testn++) {
			if (delta == 0)
				break;
			for (testm = 3; testm >= 0; testm--) {
				if (delta == 0)
					break;
				for (testo = 5; testo < 33; testo++) {
					vco = pllreffreq * (testn + 1) /
						(testr + 1);
					if (vco < vcomin)
						continue;
					if (vco > vcomax)
						continue;
					computed = vco / (m_div_val[testm] * (testo + 1));
					if (computed > clock)
						tmpdelta = computed - clock;
					else
						tmpdelta = clock - computed;
					if (tmpdelta < delta) {
						delta = tmpdelta;
						m = testm | (testo << 3);
						n = testn;
						p = testr | (testr << 3);
					}
				}
			}
		}
	}

	FUNC1(DAC_INDEX, MGA1064_PIX_CLK_CTL);
	tmp = FUNC0(DAC_DATA);
	tmp |= MGA1064_PIX_CLK_CTL_CLK_DIS;
	FUNC1(DAC_DATA, tmp);

	FUNC1(DAC_INDEX, MGA1064_REMHEADCTL);
	tmp = FUNC0(DAC_DATA);
	tmp |= MGA1064_REMHEADCTL_CLKDIS;
	FUNC1(DAC_DATA, tmp);

	tmp = FUNC0(MGAREG_MEM_MISC_READ);
	tmp |= (0x3<<2) | 0xc0;
	FUNC1(MGAREG_MEM_MISC_WRITE, tmp);

	FUNC1(DAC_INDEX, MGA1064_PIX_CLK_CTL);
	tmp = FUNC0(DAC_DATA);
	tmp &= ~MGA1064_PIX_CLK_CTL_CLK_DIS;
	tmp |= MGA1064_PIX_CLK_CTL_CLK_POW_DOWN;
	FUNC1(DAC_DATA, tmp);

	FUNC3(500);

	FUNC2(MGA1064_ER_PIX_PLLC_N, n);
	FUNC2(MGA1064_ER_PIX_PLLC_M, m);
	FUNC2(MGA1064_ER_PIX_PLLC_P, p);

	FUNC3(50);

	return 0;
}