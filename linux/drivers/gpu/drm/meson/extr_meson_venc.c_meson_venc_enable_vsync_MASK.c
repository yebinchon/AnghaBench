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
struct meson_drm {int /*<<< orphan*/  hhi; scalar_t__ io_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HHI_GCLK_MPEG2 ; 
 int /*<<< orphan*/  VENC_INTCTRL ; 
 int /*<<< orphan*/  VENC_INTCTRL_ENCI_LNRST_INT_EN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC4(struct meson_drm *priv)
{
	FUNC3(VENC_INTCTRL_ENCI_LNRST_INT_EN,
		       priv->io_base + FUNC1(VENC_INTCTRL));
	FUNC2(priv->hhi, HHI_GCLK_MPEG2, FUNC0(25), FUNC0(25));
}