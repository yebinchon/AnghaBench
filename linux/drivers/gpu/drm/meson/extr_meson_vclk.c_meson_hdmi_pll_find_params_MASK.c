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
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC1 (struct meson_drm*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (struct meson_drm*,unsigned int) ; 
 scalar_t__ FUNC3 (struct meson_drm*,unsigned int,unsigned int) ; 

__attribute__((used)) static bool FUNC4(struct meson_drm *priv,
				       unsigned int freq,
				       unsigned int *m,
				       unsigned int *frac,
				       unsigned int *od)
{
	/* Cycle from /16 to /2 */
	for (*od = 16 ; *od > 1 ; *od >>= 1) {
		*m = FUNC2(priv, freq * *od);
		if (!*m)
			continue;
		*frac = FUNC1(priv, *m, freq * *od);

		FUNC0("PLL params for %dkHz: m=%x frac=%x od=%d\n",
				 freq, *m, *frac, *od);

		if (FUNC3(priv, *m, *frac))
			return true;
	}

	return false;
}