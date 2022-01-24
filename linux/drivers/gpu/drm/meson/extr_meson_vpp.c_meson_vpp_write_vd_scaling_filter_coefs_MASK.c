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
struct meson_drm {scalar_t__ io_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  VPP_SCALE_COEF ; 
 int /*<<< orphan*/  VPP_SCALE_COEF_IDX ; 
 unsigned int const VPP_SCALE_HORIZONTAL_COEF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int const,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct meson_drm *priv,
						    const unsigned int *coefs,
						    bool is_horizontal)
{
	int i;

	FUNC1(is_horizontal ? VPP_SCALE_HORIZONTAL_COEF : 0,
			priv->io_base + FUNC0(VPP_SCALE_COEF_IDX));
	for (i = 0; i < 33; i++)
		FUNC1(coefs[i],
				priv->io_base + FUNC0(VPP_SCALE_COEF));
}