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
struct meson_drm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 scalar_t__ FUNC2 (struct meson_drm*,unsigned int,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct meson_drm*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct meson_drm *priv,
				       unsigned int pll_freq)
{
	unsigned int od, m, frac, od1, od2, od3;

	if (FUNC2(priv, pll_freq, &m, &frac, &od)) {
		od3 = 1;
		if (od < 4) {
			od1 = 2;
			od2 = 1;
		} else {
			od2 = od / 4;
			od1 = od / od2;
		}

		FUNC0("PLL params for %dkHz: m=%x frac=%x od=%d/%d/%d\n",
				 pll_freq, m, frac, od1, od2, od3);

		FUNC3(priv, m, frac, od1, od2, od3);

		return;
	}

	FUNC1("Fatal, unable to find parameters for PLL freq %d\n",
		  pll_freq);
}