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
struct mga_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAC_DATA ; 
 int /*<<< orphan*/  DAC_INDEX ; 
 int /*<<< orphan*/  MGA1064_EV_PIX_PLLC_M ; 
 int /*<<< orphan*/  MGA1064_EV_PIX_PLLC_N ; 
 int /*<<< orphan*/  MGA1064_EV_PIX_PLLC_P ; 
 int MGA1064_PIX_CLK_CTL ; 
 int MGA1064_PIX_CLK_CTL_CLK_DIS ; 
 int MGA1064_PIX_CLK_CTL_CLK_POW_DOWN ; 
 int MGA1064_PIX_CLK_CTL_SEL_MSK ; 
 int MGA1064_PIX_CLK_CTL_SEL_PLL ; 
 int MGA1064_PIX_PLL_STAT ; 
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
	unsigned int testp, testm, testn;
	unsigned int p, m, n;
	unsigned int computed;
	u8 tmp;

	m = n = p = 0;
	vcomax = 550000;
	vcomin = 150000;
	pllreffreq = 50000;

	delta = 0xffffffff;

	for (testp = 16; testp > 0; testp--) {
		if (clock * testp > vcomax)
			continue;
		if (clock * testp < vcomin)
			continue;

		for (testn = 1; testn < 257; testn++) {
			for (testm = 1; testm < 17; testm++) {
				computed = (pllreffreq * testn) /
					(testm * testp);
				if (computed > clock)
					tmpdelta = computed - clock;
				else
					tmpdelta = clock - computed;
				if (tmpdelta < delta) {
					delta = tmpdelta;
					n = testn - 1;
					m = testm - 1;
					p = testp - 1;
				}
			}
		}
	}

	FUNC1(DAC_INDEX, MGA1064_PIX_CLK_CTL);
	tmp = FUNC0(DAC_DATA);
	tmp |= MGA1064_PIX_CLK_CTL_CLK_DIS;
	FUNC1(DAC_DATA, tmp);

	tmp = FUNC0(MGAREG_MEM_MISC_READ);
	tmp |= 0x3 << 2;
	FUNC1(MGAREG_MEM_MISC_WRITE, tmp);

	FUNC1(DAC_INDEX, MGA1064_PIX_PLL_STAT);
	tmp = FUNC0(DAC_DATA);
	FUNC1(DAC_DATA, tmp & ~0x40);

	FUNC1(DAC_INDEX, MGA1064_PIX_CLK_CTL);
	tmp = FUNC0(DAC_DATA);
	tmp |= MGA1064_PIX_CLK_CTL_CLK_POW_DOWN;
	FUNC1(DAC_DATA, tmp);

	FUNC2(MGA1064_EV_PIX_PLLC_M, m);
	FUNC2(MGA1064_EV_PIX_PLLC_N, n);
	FUNC2(MGA1064_EV_PIX_PLLC_P, p);

	FUNC3(50);

	FUNC1(DAC_INDEX, MGA1064_PIX_CLK_CTL);
	tmp = FUNC0(DAC_DATA);
	tmp &= ~MGA1064_PIX_CLK_CTL_CLK_POW_DOWN;
	FUNC1(DAC_DATA, tmp);

	FUNC3(500);

	FUNC1(DAC_INDEX, MGA1064_PIX_CLK_CTL);
	tmp = FUNC0(DAC_DATA);
	tmp &= ~MGA1064_PIX_CLK_CTL_SEL_MSK;
	tmp |= MGA1064_PIX_CLK_CTL_SEL_PLL;
	FUNC1(DAC_DATA, tmp);

	FUNC1(DAC_INDEX, MGA1064_PIX_PLL_STAT);
	tmp = FUNC0(DAC_DATA);
	FUNC1(DAC_DATA, tmp | 0x40);

	tmp = FUNC0(MGAREG_MEM_MISC_READ);
	tmp |= (0x3 << 2);
	FUNC1(MGAREG_MEM_MISC_WRITE, tmp);

	FUNC1(DAC_INDEX, MGA1064_PIX_CLK_CTL);
	tmp = FUNC0(DAC_DATA);
	tmp &= ~MGA1064_PIX_CLK_CTL_CLK_DIS;
	FUNC1(DAC_DATA, tmp);

	return 0;
}